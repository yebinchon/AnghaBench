
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ss_sp; int ss_size; int ss_flags; } ;
typedef TYPE_1__ stack_t ;


 int errno ;
 int panic (char*,int ) ;
 scalar_t__ sigaltstack (TYPE_1__*,int *) ;

void set_sigstack(void *sig_stack, int size)
{
 stack_t stack = {
  .ss_flags = 0,
  .ss_sp = sig_stack,
  .ss_size = size - sizeof(void *)
 };

 if (sigaltstack(&stack, ((void*)0)) != 0)
  panic("enabling signal stack failed, errno = %d\n", errno);
}
