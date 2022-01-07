
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int save_cwd ;


 scalar_t__ chdir (char*) ;
 int cow_printf (char*,...) ;
 int errno ;
 int * getcwd (char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int absolutize(char *to, int size, char *from)
{
 char save_cwd[256], *slash;
 int remaining;

 if (getcwd(save_cwd, sizeof(save_cwd)) == ((void*)0)) {
  cow_printf("absolutize : unable to get cwd - errno = %d\n",
      errno);
  return -1;
 }
 slash = strrchr(from, '/');
 if (slash != ((void*)0)) {
  *slash = '\0';
  if (chdir(from)) {
   *slash = '/';
   cow_printf("absolutize : Can't cd to '%s' - "
       "errno = %d\n", from, errno);
   return -1;
  }
  *slash = '/';
  if (getcwd(to, size) == ((void*)0)) {
   cow_printf("absolutize : unable to get cwd of '%s' - "
          "errno = %d\n", from, errno);
   return -1;
  }
  remaining = size - strlen(to);
  if (strlen(slash) + 1 > remaining) {
   cow_printf("absolutize : unable to fit '%s' into %d "
          "chars\n", from, size);
   return -1;
  }
  strcat(to, slash);
 }
 else {
  if (strlen(save_cwd) + 1 + strlen(from) + 1 > size) {
   cow_printf("absolutize : unable to fit '%s' into %d "
          "chars\n", from, size);
   return -1;
  }
  strcpy(to, save_cwd);
  strcat(to, "/");
  strcat(to, from);
 }
 if (chdir(save_cwd)) {
  cow_printf("absolutize : Can't cd to '%s' - "
      "errno = %d\n", save_cwd, errno);
  return -1;
 }
 return 0;
}
