
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIVIL_MSR_REG (int ) ;
 int DIVIL_SOFT_RESET ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;
 int reset_cpu () ;

__attribute__((used)) static void fl2f_reboot(void)
{
 reset_cpu();
 {
  u32 hi, lo;
  _rdmsr(DIVIL_MSR_REG(DIVIL_SOFT_RESET), &hi, &lo);
  lo |= 0x00000001;
  _wrmsr(DIVIL_MSR_REG(DIVIL_SOFT_RESET), hi, lo);
 }
}
