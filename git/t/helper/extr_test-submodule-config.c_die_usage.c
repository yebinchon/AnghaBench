
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void die_usage(int argc, const char **argv, const char *msg)
{
 fprintf(stderr, "%s\n", msg);
 fprintf(stderr, "Usage: %s [<commit> <submodulepath>] ...\n", argv[0]);
 exit(1);
}
