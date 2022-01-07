
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long _TIF_SYSCALL_WORK ;
 int unlikely (unsigned long) ;

__attribute__((used)) static inline bool has_syscall_work(unsigned long flags)
{
 return unlikely(flags & _TIF_SYSCALL_WORK);
}
