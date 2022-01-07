
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 char* getenv (char*) ;
 char* mkpathdup (char*,char const*,char const*) ;

char *xdg_config_home(const char *filename)
{
 const char *home, *config_home;

 assert(filename);
 config_home = getenv("XDG_CONFIG_HOME");
 if (config_home && *config_home)
  return mkpathdup("%s/git/%s", config_home, filename);

 home = getenv("HOME");
 if (home)
  return mkpathdup("%s/.config/git/%s", home, filename);
 return ((void*)0);
}
