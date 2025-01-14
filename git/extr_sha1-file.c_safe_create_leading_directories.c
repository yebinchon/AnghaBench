
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef enum scld_error { ____Placeholder_scld_error } scld_error ;


 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int SCLD_EXISTS ;
 int SCLD_FAILED ;
 int SCLD_OK ;
 int SCLD_PERMS ;
 int SCLD_VANISHED ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ adjust_shared_perm (char*) ;
 scalar_t__ errno ;
 scalar_t__ is_dir_sep (char) ;
 scalar_t__ mkdir (char*,int) ;
 int offset_1st_component (char*) ;
 int stat (char*,struct stat*) ;

enum scld_error safe_create_leading_directories(char *path)
{
 char *next_component = path + offset_1st_component(path);
 enum scld_error ret = SCLD_OK;

 while (ret == SCLD_OK && next_component) {
  struct stat st;
  char *slash = next_component, slash_character;

  while (*slash && !is_dir_sep(*slash))
   slash++;

  if (!*slash)
   break;

  next_component = slash + 1;
  while (is_dir_sep(*next_component))
   next_component++;
  if (!*next_component)
   break;

  slash_character = *slash;
  *slash = '\0';
  if (!stat(path, &st)) {

   if (!S_ISDIR(st.st_mode)) {
    errno = ENOTDIR;
    ret = SCLD_EXISTS;
   }
  } else if (mkdir(path, 0777)) {
   if (errno == EEXIST &&
       !stat(path, &st) && S_ISDIR(st.st_mode))
    ;
   else if (errno == ENOENT)
    ret = SCLD_VANISHED;
   else
    ret = SCLD_FAILED;
  } else if (adjust_shared_perm(path)) {
   ret = SCLD_PERMS;
  }
  *slash = slash_character;
 }
 return ret;
}
