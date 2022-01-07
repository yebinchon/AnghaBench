
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int git_repository ;


 int GIT_PATH_FS_HFS ;
 int GIT_PATH_FS_NTFS ;
 int GIT_PATH_GITFILE_GITMODULES ;
 unsigned int GIT_PATH_REJECT_DOS_PATHS ;
 unsigned int GIT_PATH_REJECT_DOT_GIT_HFS ;
 unsigned int GIT_PATH_REJECT_DOT_GIT_LITERAL ;
 unsigned int GIT_PATH_REJECT_DOT_GIT_NTFS ;
 unsigned int GIT_PATH_REJECT_TRAILING_COLON ;
 unsigned int GIT_PATH_REJECT_TRAILING_DOT ;
 unsigned int GIT_PATH_REJECT_TRAILING_SPACE ;
 unsigned int GIT_PATH_REJECT_TRAVERSAL ;
 scalar_t__ S_ISLNK (int ) ;
 size_t common_prefix_icase (char const*,size_t,char*) ;
 scalar_t__ git_path_is_gitfile (char const*,size_t,int ,int ) ;
 int verify_dospath (char const*,size_t,char*,int) ;
 int verify_dotgit_hfs (char const*,size_t) ;
 int verify_dotgit_ntfs (int *,char const*,size_t) ;

__attribute__((used)) static bool verify_component(
 git_repository *repo,
 const char *component,
 size_t len,
 uint16_t mode,
 unsigned int flags)
{
 if (len == 0)
  return 0;

 if ((flags & GIT_PATH_REJECT_TRAVERSAL) &&
  len == 1 && component[0] == '.')
  return 0;

 if ((flags & GIT_PATH_REJECT_TRAVERSAL) &&
  len == 2 && component[0] == '.' && component[1] == '.')
  return 0;

 if ((flags & GIT_PATH_REJECT_TRAILING_DOT) && component[len-1] == '.')
  return 0;

 if ((flags & GIT_PATH_REJECT_TRAILING_SPACE) && component[len-1] == ' ')
  return 0;

 if ((flags & GIT_PATH_REJECT_TRAILING_COLON) && component[len-1] == ':')
  return 0;

 if (flags & GIT_PATH_REJECT_DOS_PATHS) {
  if (!verify_dospath(component, len, "CON", 0) ||
   !verify_dospath(component, len, "PRN", 0) ||
   !verify_dospath(component, len, "AUX", 0) ||
   !verify_dospath(component, len, "NUL", 0) ||
   !verify_dospath(component, len, "COM", 1) ||
   !verify_dospath(component, len, "LPT", 1))
   return 0;
 }

 if (flags & GIT_PATH_REJECT_DOT_GIT_HFS) {
  if (!verify_dotgit_hfs(component, len))
   return 0;
  if (S_ISLNK(mode) && git_path_is_gitfile(component, len, GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_HFS))
   return 0;
 }

 if (flags & GIT_PATH_REJECT_DOT_GIT_NTFS) {
  if (!verify_dotgit_ntfs(repo, component, len))
   return 0;
  if (S_ISLNK(mode) && git_path_is_gitfile(component, len, GIT_PATH_GITFILE_GITMODULES, GIT_PATH_FS_NTFS))
   return 0;
 }




 if ((flags & GIT_PATH_REJECT_DOT_GIT_HFS) == 0 &&
     (flags & GIT_PATH_REJECT_DOT_GIT_NTFS) == 0 &&
     (flags & GIT_PATH_REJECT_DOT_GIT_LITERAL)) {
  if (len >= 4 &&
      component[0] == '.' &&
      (component[1] == 'g' || component[1] == 'G') &&
      (component[2] == 'i' || component[2] == 'I') &&
      (component[3] == 't' || component[3] == 'T')) {
   if (len == 4)
    return 0;

   if (S_ISLNK(mode) && common_prefix_icase(component, len, ".gitmodules") == len)
    return 0;
  }
     }

 return 1;
}
