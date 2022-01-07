
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_info ;
 int SIGILL ;
 int math_abort (int ,int ) ;

void FPU_illegal(void)
{
 math_abort(FPU_info, SIGILL);
}
