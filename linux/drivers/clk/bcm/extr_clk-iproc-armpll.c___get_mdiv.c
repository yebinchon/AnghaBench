
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_arm_pll {scalar_t__ base; } ;






 int EFAULT ;
 int IPROC_CLK_PLLARMCTL5_H_MDIV_MASK ;
 scalar_t__ IPROC_CLK_PLLARMCTL5_OFFSET ;
 int IPROC_CLK_PLLARMC_MDIV_MASK ;
 scalar_t__ IPROC_CLK_PLLARMC_OFFSET ;
 unsigned int __get_fid (struct iproc_arm_pll*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int __get_mdiv(struct iproc_arm_pll *pll)
{
 unsigned int fid;
 int mdiv;
 u32 val;

 fid = __get_fid(pll);

 switch (fid) {
 case 129:
 case 128:
  mdiv = 1;
  break;

 case 131:
  val = readl(pll->base + IPROC_CLK_PLLARMC_OFFSET);
  mdiv = val & IPROC_CLK_PLLARMC_MDIV_MASK;
  if (mdiv == 0)
   mdiv = 256;
  break;

 case 130:
  val = readl(pll->base + IPROC_CLK_PLLARMCTL5_OFFSET);
  mdiv = val & IPROC_CLK_PLLARMCTL5_H_MDIV_MASK;
  if (mdiv == 0)
   mdiv = 256;
  break;

 default:
  mdiv = -EFAULT;
 }

 return mdiv;
}
