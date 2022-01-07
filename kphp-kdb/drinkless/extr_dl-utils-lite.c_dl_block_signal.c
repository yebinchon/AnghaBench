
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_BLOCK ;
 int dl_passert (int,int ) ;
 int dl_pstr (char*,int const) ;
 int sigaddset (int *,int const) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

int dl_block_signal (const int sig) {
  sigset_t mask;
  sigemptyset (&mask);
  int err = sigaddset (&mask, sig);
  if (err < 0) {
    return -1;
  }
  err = sigprocmask (SIG_BLOCK, &mask, ((void*)0));
  dl_passert (err != -1, dl_pstr ("failed to block signal %d", sig));

  return 0;
}
