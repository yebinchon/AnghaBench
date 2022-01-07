
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int L1_CACHE_BYTES ;
 unsigned int MPIDR_AFFINITY_LEVEL (unsigned int,int) ;
 void* PTR_ALIGN (void*,int ) ;
 unsigned int STACK_SIZE ;
 int bL_do_switch ;
 int call_with_stack (int ,void*,void*) ;
 void* current_thread_info () ;
 unsigned int read_mpidr () ;

__attribute__((used)) static int bL_switchpoint(unsigned long _arg)
{
 unsigned int mpidr = read_mpidr();
 unsigned int clusterid = MPIDR_AFFINITY_LEVEL(mpidr, 1);
 void *stack = current_thread_info() + 1;
 stack = PTR_ALIGN(stack, L1_CACHE_BYTES);
 stack += clusterid * STACK_SIZE + STACK_SIZE;
 call_with_stack(bL_do_switch, (void *)_arg, stack);
 BUG();
}
