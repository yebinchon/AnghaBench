
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigscratch {int dummy; } ;
struct ksignal {int dummy; } ;


 int TIF_SINGLESTEP ;
 int setup_frame (struct ksignal*,int ,struct sigscratch*) ;
 int sigmask_to_save () ;
 int signal_setup_done (int,struct ksignal*,int ) ;
 int test_thread_flag (int ) ;

__attribute__((used)) static long
handle_signal (struct ksignal *ksig, struct sigscratch *scr)
{
 int ret = setup_frame(ksig, sigmask_to_save(), scr);

 if (!ret)
  signal_setup_done(ret, ksig, test_thread_flag(TIF_SINGLESTEP));

 return ret;
}
