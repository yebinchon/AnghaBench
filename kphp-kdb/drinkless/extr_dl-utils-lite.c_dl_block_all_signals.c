
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int dl_passert (int,char*) ;
 int old_mask ;
 int old_mask_inited ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void dl_block_all_signals (void) {
  sigset_t mask;
  sigfillset (&mask);
  int err = sigprocmask (SIG_SETMASK, &mask, &old_mask);
  old_mask_inited = 1;
  dl_passert (err != -1, "failed to block all signals");
}
