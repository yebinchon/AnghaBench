
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int _ (int ) ;
 scalar_t__ chdir (char*) ;
 int die (int ,char*) ;
 int die_errno (char*,char*) ;
 char* dirname (char*) ;
 int free (char*) ;
 scalar_t__ mkdir (char*,int) ;
 int permissions_advice ;
 scalar_t__ safe_create_leading_directories_const (char*) ;
 int stat (char*,struct stat*) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void init_socket_directory(const char *path)
{
 struct stat st;
 char *path_copy = xstrdup(path);
 char *dir = dirname(path_copy);

 if (!stat(dir, &st)) {
  if (st.st_mode & 077)
   die(_(permissions_advice), dir);
 } else {






  if (safe_create_leading_directories_const(dir) < 0)
   die_errno("unable to create directories for '%s'", dir);
  if (mkdir(dir, 0700) < 0)
   die_errno("unable to mkdir '%s'", dir);
 }

 if (chdir(dir))





  ;

 free(path_copy);
}
