
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int printf (char*) ;
 int run_revision_walk () ;
 int setup_git_directory () ;
 int stderr ;
 int strcmp (char const*,char*) ;

int cmd__revision_walking(int argc, const char **argv)
{
 if (argc < 2)
  return 1;

 setup_git_directory();

 if (!strcmp(argv[1], "run-twice")) {
  printf("1st\n");
  if (!run_revision_walk())
   return 1;
  printf("2nd\n");
  if (!run_revision_walk())
   return 1;

  return 0;
 }

 fprintf(stderr, "check usage\n");
 return 1;
}
