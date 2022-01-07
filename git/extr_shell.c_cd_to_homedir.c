
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chdir (char const*) ;
 int die (char*) ;
 char* getenv (char*) ;

__attribute__((used)) static void cd_to_homedir(void)
{
 const char *home = getenv("HOME");
 if (!home)
  die("could not determine user's home directory; HOME is unset");
 if (chdir(home) == -1)
  die("could not chdir to user's home directory");
}
