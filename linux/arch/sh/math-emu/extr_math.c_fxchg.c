
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;


 int FPSCR ;

__attribute__((used)) static int fxchg(struct sh_fpu_soft_struct *fregs, int flag)
{
 FPSCR ^= flag;
 return 0;
}
