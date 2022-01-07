
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOL ;
 char** USAGE_MINI ;
 int fwrite (int ,int ,int,int ) ;
 int printf (char*,char const*) ;
 int stdout ;
 int strlen (int ) ;

void usage_mini_print (const char *progname)
{
  for (int i = 0; USAGE_MINI[i] != ((void*)0); i++)
  {
    printf (USAGE_MINI[i], progname);

    fwrite (EOL, strlen (EOL), 1, stdout);
  }
}
