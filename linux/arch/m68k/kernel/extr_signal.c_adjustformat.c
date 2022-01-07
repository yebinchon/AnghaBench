
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int format; } ;



__attribute__((used)) static inline void adjustformat(struct pt_regs *regs)
{




 regs->format = 0x4;
}
