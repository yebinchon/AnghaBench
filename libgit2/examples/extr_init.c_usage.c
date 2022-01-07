
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void usage(const char *error, const char *arg)
{
 fprintf(stderr, "error: %s '%s'\n", error, arg);
 fprintf(stderr,
   "usage: init [-q | --quiet] [--bare] [--template=<dir>]\n"
   "            [--shared[=perms]] [--initial-commit]\n"
   "            [--separate-git-dir] <directory>\n");
 exit(1);
}
