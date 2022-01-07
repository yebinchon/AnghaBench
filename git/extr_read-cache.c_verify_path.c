
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ S_ISLNK (unsigned int) ;
 scalar_t__ has_dos_drive_prefix (char const*) ;
 scalar_t__ is_dir_sep (char) ;
 scalar_t__ is_hfs_dotgit (char const*) ;
 scalar_t__ is_hfs_dotgitmodules (char const*) ;
 scalar_t__ is_ntfs_dotgit (char const*) ;
 scalar_t__ is_ntfs_dotgitmodules (char const*) ;
 scalar_t__ protect_hfs ;
 scalar_t__ protect_ntfs ;
 int verify_dotfile (char const*,unsigned int) ;

int verify_path(const char *path, unsigned mode)
{
 char c;

 if (has_dos_drive_prefix(path))
  return 0;

 goto inside;
 for (;;) {
  if (!c)
   return 1;
  if (is_dir_sep(c)) {
inside:
   if (protect_hfs) {
    if (is_hfs_dotgit(path))
     return 0;
    if (S_ISLNK(mode)) {
     if (is_hfs_dotgitmodules(path))
      return 0;
    }
   }
   if (protect_ntfs) {
    if (is_ntfs_dotgit(path))
     return 0;
    if (S_ISLNK(mode)) {
     if (is_ntfs_dotgitmodules(path))
      return 0;
    }
   }

   c = *path++;
   if ((c == '.' && !verify_dotfile(path, mode)) ||
       is_dir_sep(c) || c == '\0')
    return 0;
  }
  c = *path++;
 }
}
