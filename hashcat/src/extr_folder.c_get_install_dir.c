
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HCBUFSIZ_TINY ;
 int strncpy (char*,char const*,scalar_t__) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void get_install_dir (char *install_dir, const char *exec_path)
{
  strncpy (install_dir, exec_path, HCBUFSIZ_TINY - 1);

  char *last_slash = ((void*)0);

  if ((last_slash = strrchr (install_dir, '/')) != ((void*)0))
  {
    *last_slash = 0;
  }
  else if ((last_slash = strrchr (install_dir, '\\')) != ((void*)0))
  {
    *last_slash = 0;
  }
  else
  {
    install_dir[0] = '.';
    install_dir[1] = 0;
  }
}
