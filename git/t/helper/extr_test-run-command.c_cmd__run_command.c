
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {char const** argv; int env_array; } ;


 struct child_process CHILD_PROCESS_INIT ;
 scalar_t__ ENOENT ;
 int argv_array_push (int *,char const*) ;
 int atoi (char const*) ;
 int die (char*) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int no_job ;
 int parallel_next ;
 int run_command (struct child_process*) ;
 int run_processes_parallel (int,int ,int *,int *,struct child_process*) ;
 scalar_t__ start_command (struct child_process*) ;
 int stderr ;
 int strcmp (char const*,char*) ;
 int * task_finished ;
 int testsuite (int,char const**) ;

int cmd__run_command(int argc, const char **argv)
{
 struct child_process proc = CHILD_PROCESS_INIT;
 int jobs;

 if (argc > 1 && !strcmp(argv[1], "testsuite"))
  exit(testsuite(argc - 1, argv + 1));

 if (argc < 3)
  return 1;
 while (!strcmp(argv[1], "env")) {
  if (!argv[2])
   die("env specifier without a value");
  argv_array_push(&proc.env_array, argv[2]);
  argv += 2;
  argc -= 2;
 }
 if (argc < 3)
  return 1;
 proc.argv = (const char **)argv + 2;

 if (!strcmp(argv[1], "start-command-ENOENT")) {
  if (start_command(&proc) < 0 && errno == ENOENT)
   return 0;
  fprintf(stderr, "FAIL %s\n", argv[1]);
  return 1;
 }
 if (!strcmp(argv[1], "run-command"))
  exit(run_command(&proc));

 jobs = atoi(argv[2]);
 proc.argv = (const char **)argv + 3;

 if (!strcmp(argv[1], "run-command-parallel"))
  exit(run_processes_parallel(jobs, parallel_next,
         ((void*)0), ((void*)0), &proc));

 if (!strcmp(argv[1], "run-command-abort"))
  exit(run_processes_parallel(jobs, parallel_next,
         ((void*)0), task_finished, &proc));

 if (!strcmp(argv[1], "run-command-no-jobs"))
  exit(run_processes_parallel(jobs, no_job,
         ((void*)0), task_finished, &proc));

 fprintf(stderr, "check usage\n");
 return 1;
}
