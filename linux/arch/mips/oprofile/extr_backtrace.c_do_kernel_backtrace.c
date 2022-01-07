
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {int dummy; } ;



__attribute__((used)) static inline void do_kernel_backtrace(unsigned long low_addr,
           struct stackframe *frame,
           unsigned int depth) { }
