
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*,...) ;
 int stderr ;

void fatal(const char *message, const char *extra)
{
 if (extra)
  fprintf(stderr, "%s %s\n", message, extra);
 else
  fprintf(stderr, "%s\n", message);

 exit(1);
}
