
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;



__attribute__((used)) static inline bool tm_abort_check(struct pt_regs *regs, int reason)
{
 return 0;
}
