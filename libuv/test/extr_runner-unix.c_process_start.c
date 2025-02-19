
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int * stdout_file; int name; scalar_t__ pid; scalar_t__ status; scalar_t__ terminated; } ;
typedef TYPE_1__ process_info_t ;
typedef scalar_t__ pid_t ;
typedef int fdstr ;
typedef int FILE ;


 scalar_t__ EINTR ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int _exit (int) ;
 scalar_t__ atoi (char const*) ;
 int closefd (int) ;
 int dup2 (int,int ) ;
 int environ ;
 scalar_t__ errno ;
 char* executable_path ;
 int execve (char*,char**,int ) ;
 int fileno (int *) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*) ;
 char* getenv (char*) ;
 int perror (char*) ;
 scalar_t__ pipe (int*) ;
 int read (int,int*,int) ;
 scalar_t__ setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int stderr ;
 int strdup (char*) ;
 int * tmpfile () ;
 int unsetenv (char*) ;

int process_start(char* name, char* part, process_info_t* p, int is_helper) {
  FILE* stdout_file;
  int stdout_fd;
  const char* arg;
  char* args[16];
  int pipefd[2];
  char fdstr[8];
  ssize_t rc;
  int n;
  pid_t pid;

  arg = getenv("UV_USE_VALGRIND");
  n = 0;




  if (is_helper == 0 && arg != ((void*)0) && atoi(arg) != 0) {
    args[n++] = "valgrind";
    args[n++] = "--quiet";
    args[n++] = "--leak-check=full";
    args[n++] = "--show-reachable=yes";
    args[n++] = "--error-exitcode=125";
  }

  args[n++] = executable_path;
  args[n++] = name;
  args[n++] = part;
  args[n++] = ((void*)0);

  stdout_file = tmpfile();
  stdout_fd = fileno(stdout_file);
  if (!stdout_file) {
    perror("tmpfile");
    return -1;
  }

  if (is_helper) {
    if (pipe(pipefd)) {
      perror("pipe");
      return -1;
    }

    snprintf(fdstr, sizeof(fdstr), "%d", pipefd[1]);
    if (setenv("UV_TEST_RUNNER_FD", fdstr, 1)) {
      perror("setenv");
      return -1;
    }
  }

  p->terminated = 0;
  p->status = 0;

  pid = fork();

  if (pid < 0) {
    perror("fork");
    return -1;
  }

  if (pid == 0) {

    if (is_helper)
      closefd(pipefd[0]);
    dup2(stdout_fd, STDOUT_FILENO);
    dup2(stdout_fd, STDERR_FILENO);
    execve(args[0], args, environ);
    perror("execve()");
    _exit(127);
  }


  p->pid = pid;
  p->name = strdup(name);
  p->stdout_file = stdout_file;

  if (!is_helper)
    return 0;

  closefd(pipefd[1]);
  unsetenv("UV_TEST_RUNNER_FD");

  do
    rc = read(pipefd[0], &n, 1);
  while (rc == -1 && errno == EINTR);

  closefd(pipefd[0]);

  if (rc == -1) {
    perror("read");
    return -1;
  }

  if (rc > 0) {
    fprintf(stderr, "EOF expected but got data.\n");
    return -1;
  }

  return 0;
}
