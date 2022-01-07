
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int srev; char* name; int rev; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int IMX_CHIP_REVISION_UNKNOWN ;
 scalar_t__ MX31_IIM_BASE_ADDR ;
 int MX31_IO_ADDRESS (scalar_t__) ;
 scalar_t__ MXC_IIMSREV ;
 int imx_print_silicon_rev (char*,int) ;
 int imx_readl (int ) ;
 TYPE_1__* mx31_cpu_type ;

__attribute__((used)) static int mx31_read_cpu_rev(void)
{
 u32 i, srev;


 srev = imx_readl(MX31_IO_ADDRESS(MX31_IIM_BASE_ADDR + MXC_IIMSREV));
 srev &= 0xff;

 for (i = 0; i < ARRAY_SIZE(mx31_cpu_type); i++)
  if (srev == mx31_cpu_type[i].srev) {
   imx_print_silicon_rev(mx31_cpu_type[i].name,
      mx31_cpu_type[i].rev);
   return mx31_cpu_type[i].rev;
  }

 imx_print_silicon_rev("i.MX31", IMX_CHIP_REVISION_UNKNOWN);
 return IMX_CHIP_REVISION_UNKNOWN;
}
