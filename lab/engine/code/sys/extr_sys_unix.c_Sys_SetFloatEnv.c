
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FE_TONEAREST ;
 int fesetround (int ) ;

void Sys_SetFloatEnv(void)
{

 fesetround(FE_TONEAREST);
}
