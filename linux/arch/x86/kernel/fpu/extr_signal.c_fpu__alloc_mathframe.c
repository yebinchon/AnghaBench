
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fregs_state {int dummy; } ;


 unsigned long round_down (unsigned long,int) ;
 scalar_t__ use_fxsr () ;
 unsigned long xstate_sigframe_size () ;

unsigned long
fpu__alloc_mathframe(unsigned long sp, int ia32_frame,
       unsigned long *buf_fx, unsigned long *size)
{
 unsigned long frame_size = xstate_sigframe_size();

 *buf_fx = sp = round_down(sp - frame_size, 64);
 if (ia32_frame && use_fxsr()) {
  frame_size += sizeof(struct fregs_state);
  sp -= sizeof(struct fregs_state);
 }

 *size = frame_size;

 return sp;
}
