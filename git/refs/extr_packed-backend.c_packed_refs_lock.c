
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_store {int dummy; } ;
struct packed_ref_store {int lock; int path; } ;


 int REF_STORE_MAIN ;
 int REF_STORE_WRITE ;
 int clear_snapshot (struct packed_ref_store*) ;
 scalar_t__ close_lock_file_gently (int *) ;
 int errno ;
 int get_snapshot (struct packed_ref_store*) ;
 int git_config_get_int (char*,int*) ;
 scalar_t__ hold_lock_file_for_update_timeout (int *,int ,int,int) ;
 struct packed_ref_store* packed_downcast (struct ref_store*,int,char*) ;
 int rollback_lock_file (int *) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ) ;
 int strerror (int ) ;
 int unable_to_lock_message (int ,int ,struct strbuf*) ;

int packed_refs_lock(struct ref_store *ref_store, int flags, struct strbuf *err)
{
 struct packed_ref_store *refs =
  packed_downcast(ref_store, REF_STORE_WRITE | REF_STORE_MAIN,
    "packed_refs_lock");
 static int timeout_configured = 0;
 static int timeout_value = 1000;

 if (!timeout_configured) {
  git_config_get_int("core.packedrefstimeout", &timeout_value);
  timeout_configured = 1;
 }






 if (hold_lock_file_for_update_timeout(
       &refs->lock,
       refs->path,
       flags, timeout_value) < 0) {
  unable_to_lock_message(refs->path, errno, err);
  return -1;
 }

 if (close_lock_file_gently(&refs->lock)) {
  strbuf_addf(err, "unable to close %s: %s", refs->path, strerror(errno));
  rollback_lock_file(&refs->lock);
  return -1;
 }
 clear_snapshot(refs);





 get_snapshot(refs);
 return 0;
}
