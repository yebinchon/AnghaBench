
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPIPE ;
 int SIGPIPE ;
 int SIG_DFL ;
 int async_exit (int) ;
 int exit (int) ;
 scalar_t__ in_async () ;
 int raise (int ) ;
 int signal (int ,int ) ;

void check_pipe(int err)
{
 if (err == EPIPE) {
  if (in_async())
   async_exit(141);

  signal(SIGPIPE, SIG_DFL);
  raise(SIGPIPE);

  exit(141);
 }
}
