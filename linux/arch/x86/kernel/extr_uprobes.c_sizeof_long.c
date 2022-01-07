
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ user_64bit_mode (struct pt_regs*) ;

__attribute__((used)) static inline int sizeof_long(struct pt_regs *regs)
{



 return user_64bit_mode(regs) ? 8 : 4;
}
