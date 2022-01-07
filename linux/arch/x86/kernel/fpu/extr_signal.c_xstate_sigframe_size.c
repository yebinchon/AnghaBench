
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FP_XSTATE_MAGIC2_SIZE ;
 int fpu_user_xstate_size ;
 scalar_t__ use_xsave () ;

__attribute__((used)) static inline int xstate_sigframe_size(void)
{
 return use_xsave() ? fpu_user_xstate_size + FP_XSTATE_MAGIC2_SIZE :
   fpu_user_xstate_size;
}
