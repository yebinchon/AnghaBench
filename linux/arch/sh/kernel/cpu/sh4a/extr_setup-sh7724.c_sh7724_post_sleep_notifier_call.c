
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int spuclk; int irdaclk; int rwtcsr; int rwtcnt; int imr12; int imr11; int imr10; int imr9; int imr8; int imr7; int imr6; int imr5; int imr4; int imr3; int imr2; int imr1; int imr0; int iprl; int iprk; int iprj; int ipri; int iprh; int iprg; int iprf; int ipre; int iprd; int iprc; int iprb; int ipra; int cs6bwcr; int cs6awcr; int cs5bwcr; int cs5awcr; int cs4wcr; int cs6bbcr; int cs6abcr; int cs5bbcr; int cs5abcr; int cs4bcr; int cs0bcr; int mmselr; } ;


 int NOTIFY_DONE ;
 unsigned long SUSP_SH_RSTANDBY ;
 int __raw_writeb (int ,int) ;
 int __raw_writel (int ,int) ;
 int __raw_writew (int ,int) ;
 TYPE_1__ sh7724_rstandby_state ;

__attribute__((used)) static int sh7724_post_sleep_notifier_call(struct notifier_block *nb,
        unsigned long flags, void *unused)
{
 if (!(flags & SUSP_SH_RSTANDBY))
  return NOTIFY_DONE;


 __raw_writel(sh7724_rstandby_state.mmselr, 0xff800020);
 __raw_writel(sh7724_rstandby_state.cs0bcr, 0xfec10004);
 __raw_writel(sh7724_rstandby_state.cs4bcr, 0xfec10010);
 __raw_writel(sh7724_rstandby_state.cs5abcr, 0xfec10014);
 __raw_writel(sh7724_rstandby_state.cs5bbcr, 0xfec10018);
 __raw_writel(sh7724_rstandby_state.cs6abcr, 0xfec1001c);
 __raw_writel(sh7724_rstandby_state.cs6bbcr, 0xfec10020);
 __raw_writel(sh7724_rstandby_state.cs4wcr, 0xfec10030);
 __raw_writel(sh7724_rstandby_state.cs5awcr, 0xfec10034);
 __raw_writel(sh7724_rstandby_state.cs5bwcr, 0xfec10038);
 __raw_writel(sh7724_rstandby_state.cs6awcr, 0xfec1003c);
 __raw_writel(sh7724_rstandby_state.cs6bwcr, 0xfec10040);


 __raw_writew(sh7724_rstandby_state.ipra, 0xa4080000);
 __raw_writew(sh7724_rstandby_state.iprb, 0xa4080004);
 __raw_writew(sh7724_rstandby_state.iprc, 0xa4080008);
 __raw_writew(sh7724_rstandby_state.iprd, 0xa408000c);
 __raw_writew(sh7724_rstandby_state.ipre, 0xa4080010);
 __raw_writew(sh7724_rstandby_state.iprf, 0xa4080014);
 __raw_writew(sh7724_rstandby_state.iprg, 0xa4080018);
 __raw_writew(sh7724_rstandby_state.iprh, 0xa408001c);
 __raw_writew(sh7724_rstandby_state.ipri, 0xa4080020);
 __raw_writew(sh7724_rstandby_state.iprj, 0xa4080024);
 __raw_writew(sh7724_rstandby_state.iprk, 0xa4080028);
 __raw_writew(sh7724_rstandby_state.iprl, 0xa408002c);
 __raw_writeb(sh7724_rstandby_state.imr0, 0xa4080080);
 __raw_writeb(sh7724_rstandby_state.imr1, 0xa4080084);
 __raw_writeb(sh7724_rstandby_state.imr2, 0xa4080088);
 __raw_writeb(sh7724_rstandby_state.imr3, 0xa408008c);
 __raw_writeb(sh7724_rstandby_state.imr4, 0xa4080090);
 __raw_writeb(sh7724_rstandby_state.imr5, 0xa4080094);
 __raw_writeb(sh7724_rstandby_state.imr6, 0xa4080098);
 __raw_writeb(sh7724_rstandby_state.imr7, 0xa408009c);
 __raw_writeb(sh7724_rstandby_state.imr8, 0xa40800a0);
 __raw_writeb(sh7724_rstandby_state.imr9, 0xa40800a4);
 __raw_writeb(sh7724_rstandby_state.imr10, 0xa40800a8);
 __raw_writeb(sh7724_rstandby_state.imr11, 0xa40800ac);
 __raw_writeb(sh7724_rstandby_state.imr12, 0xa40800b0);


 __raw_writew(sh7724_rstandby_state.rwtcnt, 0xa4520000);
 __raw_writew(sh7724_rstandby_state.rwtcsr, 0xa4520004);


 __raw_writel(sh7724_rstandby_state.irdaclk, 0xa4150018);
 __raw_writel(sh7724_rstandby_state.spuclk, 0xa415003c);

 return NOTIFY_DONE;
}
