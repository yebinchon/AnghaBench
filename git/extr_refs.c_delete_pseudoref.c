
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct lock_file {int dummy; } ;


 struct lock_file LOCK_INIT ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int error (int ,char const*) ;
 int error_errno (int ,char const*) ;
 int get_files_ref_lock_timeout_ms () ;
 char* git_path (char*,char const*) ;
 int hold_lock_file_for_update_timeout (struct lock_file*,char const*,int ,int ) ;
 int is_null_oid (struct object_id const*) ;
 int oideq (struct object_id*,struct object_id const*) ;
 scalar_t__ read_ref (char const*,struct object_id*) ;
 int rollback_lock_file (struct lock_file*) ;
 int unlink (char const*) ;

__attribute__((used)) static int delete_pseudoref(const char *pseudoref, const struct object_id *old_oid)
{
 const char *filename;

 filename = git_path("%s", pseudoref);

 if (old_oid && !is_null_oid(old_oid)) {
  struct lock_file lock = LOCK_INIT;
  int fd;
  struct object_id actual_old_oid;

  fd = hold_lock_file_for_update_timeout(
    &lock, filename, 0,
    get_files_ref_lock_timeout_ms());
  if (fd < 0) {
   error_errno(_("could not open '%s' for writing"),
        filename);
   return -1;
  }
  if (read_ref(pseudoref, &actual_old_oid))
   die(_("could not read ref '%s'"), pseudoref);
  if (!oideq(&actual_old_oid, old_oid)) {
   error(_("unexpected object ID when deleting '%s'"),
         pseudoref);
   rollback_lock_file(&lock);
   return -1;
  }

  unlink(filename);
  rollback_lock_file(&lock);
 } else {
  unlink(filename);
 }

 return 0;
}
