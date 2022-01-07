
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_pop () ;
 int FPU_rm ;
 int compare_ui_st_st (int ) ;

void fucomip(void)
{

 if (!compare_ui_st_st(FPU_rm))
  FPU_pop();
}
