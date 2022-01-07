
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stacktrace_ops {int dummy; } ;
struct pt_regs {int dummy; } ;


 unsigned long __MEMORY_START ;
 int sh64_unwind_inner (struct stacktrace_ops const*,void*,struct pt_regs*) ;

__attribute__((used)) static inline void unwind_nested(const struct stacktrace_ops *ops, void *data,
     unsigned long pc, unsigned long fp)
{
 if ((fp >= __MEMORY_START) &&
     ((fp & 7) == 0))
  sh64_unwind_inner(ops, data, (struct pt_regs *)fp);
}
