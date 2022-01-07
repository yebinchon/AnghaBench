
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int suspend_state_t ;


 int EINVAL ;
 int MX27_CCM_BASE_ADDR ;
 int MX27_IO_ADDRESS (int ) ;

 int cpu_do_idle () ;
 int imx_readl (int ) ;
 int imx_writel (int,int ) ;

__attribute__((used)) static int mx27_suspend_enter(suspend_state_t state)
{
 u32 cscr;
 switch (state) {
 case 128:

  cscr = imx_readl(MX27_IO_ADDRESS(MX27_CCM_BASE_ADDR));
  cscr &= 0xFFFFFFFC;
  imx_writel(cscr, MX27_IO_ADDRESS(MX27_CCM_BASE_ADDR));

  cpu_do_idle();
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
