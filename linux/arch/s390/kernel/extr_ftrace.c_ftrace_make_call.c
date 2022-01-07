
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_insn {int dummy; } ;
struct dyn_ftrace {scalar_t__ ip; } ;
typedef int old ;
typedef int new ;


 int EFAULT ;
 int EINVAL ;
 int ftrace_generate_call_insn (struct ftrace_insn*,scalar_t__) ;
 int ftrace_generate_kprobe_call_insn (struct ftrace_insn*) ;
 int ftrace_generate_kprobe_nop_insn (struct ftrace_insn*) ;
 int ftrace_generate_nop_insn (struct ftrace_insn*) ;
 scalar_t__ is_kprobe_on_ftrace (struct ftrace_insn*) ;
 scalar_t__ memcmp (struct ftrace_insn*,struct ftrace_insn*,int) ;
 scalar_t__ probe_kernel_read (struct ftrace_insn*,void*,int) ;
 int s390_kernel_write (void*,struct ftrace_insn*,int) ;

int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
{
 struct ftrace_insn orig, new, old;

 if (probe_kernel_read(&old, (void *) rec->ip, sizeof(old)))
  return -EFAULT;
 if (is_kprobe_on_ftrace(&old)) {







  ftrace_generate_kprobe_nop_insn(&orig);
  ftrace_generate_kprobe_call_insn(&new);
 } else {

  ftrace_generate_nop_insn(&orig);
  ftrace_generate_call_insn(&new, rec->ip);
 }

 if (memcmp(&orig, &old, sizeof(old)))
  return -EINVAL;
 s390_kernel_write((void *) rec->ip, &new, sizeof(new));
 return 0;
}
