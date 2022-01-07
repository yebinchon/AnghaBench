
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MXC_GPR (unsigned int) ;
 int imx_iomuxv1_rmwl (int ,unsigned long,unsigned long) ;

__attribute__((used)) static inline void imx_iomuxv1_set_gpr(
  unsigned int port, unsigned int pin, int af)
{
 unsigned long mask = 1 << pin;

 imx_iomuxv1_rmwl(MXC_GPR(port), mask, af ? mask : 0);
}
