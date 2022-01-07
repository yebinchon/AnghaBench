
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; unsigned long nip; } ;
struct bug_entry {char* file; int line; scalar_t__ bug_addr; } ;


 int MSR_PR ;
 struct bug_entry* find_bug (unsigned long) ;
 int is_kernel_addr (unsigned long) ;
 scalar_t__ is_warning_bug (struct bug_entry const*) ;
 int printf (char*,void*,...) ;

__attribute__((used)) static void print_bug_trap(struct pt_regs *regs)
{
}
