
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 scalar_t__ OBJECT_CREATION_USES_RENAMES ;
 int _ (char*) ;
 scalar_t__ adjust_shared_perm (char const*) ;
 int errno ;
 int error (int ,char const*) ;
 int error_errno (int ,char const*) ;
 scalar_t__ link (char const*,char const*) ;
 scalar_t__ object_creation_mode ;
 int rename (char const*,char const*) ;
 int unlink_or_warn (char const*) ;

int finalize_object_file(const char *tmpfile, const char *filename)
{
 int ret = 0;

 if (object_creation_mode == OBJECT_CREATION_USES_RENAMES)
  goto try_rename;
 else if (link(tmpfile, filename))
  ret = errno;
 if (ret && ret != EEXIST) {
 try_rename:
  if (!rename(tmpfile, filename))
   goto out;
  ret = errno;
 }
 unlink_or_warn(tmpfile);
 if (ret) {
  if (ret != EEXIST) {
   return error_errno(_("unable to write file %s"), filename);
  }

 }

out:
 if (adjust_shared_perm(filename))
  return error(_("unable to set permission to '%s'"), filename);
 return 0;
}
