
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;


 struct lock_file LOCK_INIT ;
 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int commit_lock_file (struct lock_file*) ;
 int errno ;
 int get_files_ref_lock_timeout_ms () ;
 char* git_path (char*,char const*) ;
 int hold_lock_file_for_update_timeout (struct lock_file*,char const*,int ,int ) ;
 scalar_t__ is_null_oid (struct object_id const*) ;
 char const* oid_to_hex (struct object_id const*) ;
 int oideq (struct object_id*,struct object_id const*) ;
 scalar_t__ read_ref (char const*,struct object_id*) ;
 int rollback_lock_file (struct lock_file*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,...) ;
 int strbuf_release (struct strbuf*) ;
 int strerror (int ) ;
 scalar_t__ write_in_full (int,int ,int ) ;

__attribute__((used)) static int write_pseudoref(const char *pseudoref, const struct object_id *oid,
      const struct object_id *old_oid, struct strbuf *err)
{
 const char *filename;
 int fd;
 struct lock_file lock = LOCK_INIT;
 struct strbuf buf = STRBUF_INIT;
 int ret = -1;

 if (!oid)
  return 0;

 strbuf_addf(&buf, "%s\n", oid_to_hex(oid));

 filename = git_path("%s", pseudoref);
 fd = hold_lock_file_for_update_timeout(&lock, filename, 0,
            get_files_ref_lock_timeout_ms());
 if (fd < 0) {
  strbuf_addf(err, _("could not open '%s' for writing: %s"),
       filename, strerror(errno));
  goto done;
 }

 if (old_oid) {
  struct object_id actual_old_oid;

  if (read_ref(pseudoref, &actual_old_oid)) {
   if (!is_null_oid(old_oid)) {
    strbuf_addf(err, _("could not read ref '%s'"),
         pseudoref);
    rollback_lock_file(&lock);
    goto done;
   }
  } else if (is_null_oid(old_oid)) {
   strbuf_addf(err, _("ref '%s' already exists"),
        pseudoref);
   rollback_lock_file(&lock);
   goto done;
  } else if (!oideq(&actual_old_oid, old_oid)) {
   strbuf_addf(err, _("unexpected object ID when writing '%s'"),
        pseudoref);
   rollback_lock_file(&lock);
   goto done;
  }
 }

 if (write_in_full(fd, buf.buf, buf.len) < 0) {
  strbuf_addf(err, _("could not write to '%s'"), filename);
  rollback_lock_file(&lock);
  goto done;
 }

 commit_lock_file(&lock);
 ret = 0;
done:
 strbuf_release(&buf);
 return ret;
}
