
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIVIL_LBAR_PMS ;
 int DIVIL_LBAR_SMB ;
 int DIVIL_MSR_REG (int) ;
 int _rdmsr (int ,int*,int*) ;
 int _wrmsr (int ,int,int) ;

__attribute__((used)) static void divil_lbar_enable(void)
{
 u32 hi, lo;
 int offset;





 for (offset = DIVIL_LBAR_SMB; offset <= DIVIL_LBAR_PMS; offset++) {
  _rdmsr(DIVIL_MSR_REG(offset), &hi, &lo);
  hi |= 0x01;
  _wrmsr(DIVIL_MSR_REG(offset), hi, lo);
 }
}
