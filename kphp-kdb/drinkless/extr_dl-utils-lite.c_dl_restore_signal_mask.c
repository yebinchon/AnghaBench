
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_SETMASK ;
 int dl_assert (int,char*) ;
 int dl_passert (int,char*) ;
 int old_mask ;
 scalar_t__ old_mask_inited ;
 int sigprocmask (int ,int *,int *) ;

void dl_restore_signal_mask (void) {
  dl_assert (old_mask_inited != 0, "old_mask in not inited");
  int err = sigprocmask (SIG_SETMASK, &old_mask, ((void*)0));
  dl_passert (err != -1, "failed to restore signal mask");
}
