
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_pop () ;
 int FPU_rm ;
 int FPU_settagi (int ,int ) ;
 int TAG_Empty ;

void ffreep(void)
{

 FPU_settagi(FPU_rm, TAG_Empty);
 FPU_pop();
}
