
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int ARITH_X ;
 int BOTH_PRmn (int ,int ) ;
 int SUB ;

__attribute__((used)) static int
fsub(struct sh_fpu_soft_struct *fregs, struct pt_regs *regs, int m, int n)
{
 BOTH_PRmn(ARITH_X, SUB);
 return 0;
}
