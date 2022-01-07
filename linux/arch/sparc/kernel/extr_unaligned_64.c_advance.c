
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int tpc; int tnpc; } ;


 int TIF_32BIT ;
 scalar_t__ test_thread_flag (int ) ;

__attribute__((used)) static inline void advance(struct pt_regs *regs)
{
 regs->tpc = regs->tnpc;
 regs->tnpc += 4;
 if (test_thread_flag(TIF_32BIT)) {
  regs->tpc &= 0xffffffff;
  regs->tnpc &= 0xffffffff;
 }
}
