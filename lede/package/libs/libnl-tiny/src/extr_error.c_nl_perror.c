
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,...) ;
 char* nl_geterror (int) ;
 int stderr ;

void nl_perror(int error, const char *s)
{
 if (s && *s)
  fprintf(stderr, "%s: %s\n", s, nl_geterror(error));
 else
  fprintf(stderr, "%s\n", nl_geterror(error));
}
