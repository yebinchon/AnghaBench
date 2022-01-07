
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void usage(const char *message, const char *arg)
{
 if (message && arg)
  fprintf(stderr, "%s: %s\n", message, arg);
 else if (message)
  fprintf(stderr, "%s\n", message);
 fprintf(stderr, "usage: ls-files [--error-unmatch] [--] [<file>...]\n");
 exit(1);
}
