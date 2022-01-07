
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_rm ;
 int FPU_sub (int ,int ,int ) ;
 int clear_C1 () ;
 int control_word ;

void fsub__(void)
{

 clear_C1();
 FPU_sub(0, FPU_rm, control_word);
}
