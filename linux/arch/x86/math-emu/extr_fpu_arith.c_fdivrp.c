
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEST_RM ;
 scalar_t__ FPU_div (int ,int ,int ) ;
 int FPU_pop () ;
 int FPU_rm ;
 int clear_C1 () ;
 int control_word ;

void fdivrp(void)
{

 clear_C1();
 if (FPU_div(DEST_RM, FPU_rm, control_word) >= 0)
  FPU_pop();
}
