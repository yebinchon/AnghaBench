
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct ref_store {int dummy; } ;
struct packed_ref_store {int path; int tempfile; int lock; } ;


 int REF_STORE_ODB ;
 int REF_STORE_READ ;
 int REF_STORE_WRITE ;
 int TRANSACTION_GENERIC_ERROR ;
 int clear_snapshot (struct packed_ref_store*) ;
 int errno ;
 int free (char*) ;
 char* get_locked_file_path (int *) ;
 struct packed_ref_store* packed_downcast (struct ref_store*,int,char*) ;
 int packed_transaction_cleanup (struct packed_ref_store*,struct ref_transaction*) ;
 scalar_t__ rename_tempfile (int *,char*) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int packed_transaction_finish(struct ref_store *ref_store,
         struct ref_transaction *transaction,
         struct strbuf *err)
{
 struct packed_ref_store *refs = packed_downcast(
   ref_store,
   REF_STORE_READ | REF_STORE_WRITE | REF_STORE_ODB,
   "ref_transaction_finish");
 int ret = TRANSACTION_GENERIC_ERROR;
 char *packed_refs_path;

 clear_snapshot(refs);

 packed_refs_path = get_locked_file_path(&refs->lock);
 if (rename_tempfile(&refs->tempfile, packed_refs_path)) {
  strbuf_addf(err, "error replacing %s: %s",
       refs->path, strerror(errno));
  goto cleanup;
 }

 ret = 0;

cleanup:
 free(packed_refs_path);
 packed_transaction_cleanup(refs, transaction);
 return ret;
}
