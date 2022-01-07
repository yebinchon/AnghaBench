
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dir_inside_of (char*,char const*) ;
 int free (char*) ;
 char* xgetcwd () ;

int is_inside_dir(const char *dir)
{
 char *cwd;
 int rc;

 if (!dir)
  return 0;

 cwd = xgetcwd();
 rc = (dir_inside_of(cwd, dir) >= 0);
 free(cwd);
 return rc;
}
