
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THREAD_SIZE ;
 int current_stack_pointer () ;
 int dump_stack () ;
 int pr_err (char*,long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void check_stack_overflow(void)
{
}
