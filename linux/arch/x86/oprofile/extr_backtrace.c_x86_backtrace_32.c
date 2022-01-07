
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;



__attribute__((used)) static inline int
x86_backtrace_32(struct pt_regs * const regs, unsigned int depth)
{
 return 0;
}
