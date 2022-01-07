
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int assert (int) ;
 int atoi (char*) ;
 int closefd (int) ;
 char* getenv (char*) ;
 int unsetenv (char*) ;

void notify_parent_process(void) {
  char* arg;
  int fd;

  arg = getenv("UV_TEST_RUNNER_FD");
  if (arg == ((void*)0))
    return;

  fd = atoi(arg);
  assert(fd > STDERR_FILENO);
  unsetenv("UV_TEST_RUNNER_FD");
  closefd(fd);
}
