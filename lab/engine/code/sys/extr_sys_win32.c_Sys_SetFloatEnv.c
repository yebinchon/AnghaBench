
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPUCW ;
 int FPUCWMASK ;
 int _controlfp (int ,int ) ;

void Sys_SetFloatEnv(void)
{
 _controlfp(FPUCW, FPUCWMASK);
}
