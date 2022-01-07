
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int free (char*) ;
 int is_missing_file_error (int ) ;
 scalar_t__ rmdir (char*) ;
 char* strrchr (char const*,char) ;
 scalar_t__ unlink (char const*) ;
 char* xstrdup (char const*) ;

int remove_path(const char *name)
{
 char *slash;

 if (unlink(name) && !is_missing_file_error(errno))
  return -1;

 slash = strrchr(name, '/');
 if (slash) {
  char *dirs = xstrdup(name);
  slash = dirs + (slash - name);
  do {
   *slash = '\0';
  } while (rmdir(dirs) == 0 && (slash = strrchr(dirs, '/')));
  free(dirs);
 }
 return 0;
}
