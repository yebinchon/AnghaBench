
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int git_cmd; char const** argv; } ;


 struct child_process CHILD_PROCESS_INIT ;
 int die (char*) ;
 int run_command (struct child_process*) ;
 int setup_git_directory_gently (int*) ;
 int setup_work_tree () ;
 int strcmp (char const*,char*) ;

int cmd__subprocess(int argc, const char **argv)
{
 struct child_process cp = CHILD_PROCESS_INIT;
 int nogit = 0;

 setup_git_directory_gently(&nogit);
 if (nogit)
  die("No git repo found");
 if (argc > 1 && !strcmp(argv[1], "--setup-work-tree")) {
  setup_work_tree();
  argv++;
 }
 cp.git_cmd = 1;
 cp.argv = (const char **)argv + 1;
 return run_command(&cp);
}
