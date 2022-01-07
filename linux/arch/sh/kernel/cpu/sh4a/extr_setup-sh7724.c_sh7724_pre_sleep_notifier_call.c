
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int mmselr; int rwtcnt; int rwtcsr; void* spuclk; void* irdaclk; void* imr12; void* imr11; void* imr10; void* imr9; void* imr8; void* imr7; void* imr6; void* imr5; void* imr4; void* imr3; void* imr2; void* imr1; void* imr0; void* iprl; void* iprk; void* iprj; void* ipri; void* iprh; void* iprg; void* iprf; void* ipre; void* iprd; void* iprc; void* iprb; void* ipra; void* cs6bwcr; void* cs6awcr; void* cs5bwcr; void* cs5awcr; void* cs4wcr; void* cs6bbcr; void* cs6abcr; void* cs5bbcr; void* cs5abcr; void* cs4bcr; void* cs0bcr; } ;


 int NOTIFY_DONE ;
 unsigned long SUSP_SH_RSTANDBY ;
 void* __raw_readb (int) ;
 void* __raw_readl (int) ;
 void* __raw_readw (int) ;
 int __raw_writew (int,int) ;
 TYPE_1__ sh7724_rstandby_state ;

__attribute__((used)) static int sh7724_pre_sleep_notifier_call(struct notifier_block *nb,
       unsigned long flags, void *unused)
{
 if (!(flags & SUSP_SH_RSTANDBY))
  return NOTIFY_DONE;


 sh7724_rstandby_state.mmselr = __raw_readl(0xff800020);
 sh7724_rstandby_state.mmselr |= 0xa5a50000;
 sh7724_rstandby_state.cs0bcr = __raw_readl(0xfec10004);
 sh7724_rstandby_state.cs4bcr = __raw_readl(0xfec10010);
 sh7724_rstandby_state.cs5abcr = __raw_readl(0xfec10014);
 sh7724_rstandby_state.cs5bbcr = __raw_readl(0xfec10018);
 sh7724_rstandby_state.cs6abcr = __raw_readl(0xfec1001c);
 sh7724_rstandby_state.cs6bbcr = __raw_readl(0xfec10020);
 sh7724_rstandby_state.cs4wcr = __raw_readl(0xfec10030);
 sh7724_rstandby_state.cs5awcr = __raw_readl(0xfec10034);
 sh7724_rstandby_state.cs5bwcr = __raw_readl(0xfec10038);
 sh7724_rstandby_state.cs6awcr = __raw_readl(0xfec1003c);
 sh7724_rstandby_state.cs6bwcr = __raw_readl(0xfec10040);


 sh7724_rstandby_state.ipra = __raw_readw(0xa4080000);
 sh7724_rstandby_state.iprb = __raw_readw(0xa4080004);
 sh7724_rstandby_state.iprc = __raw_readw(0xa4080008);
 sh7724_rstandby_state.iprd = __raw_readw(0xa408000c);
 sh7724_rstandby_state.ipre = __raw_readw(0xa4080010);
 sh7724_rstandby_state.iprf = __raw_readw(0xa4080014);
 sh7724_rstandby_state.iprg = __raw_readw(0xa4080018);
 sh7724_rstandby_state.iprh = __raw_readw(0xa408001c);
 sh7724_rstandby_state.ipri = __raw_readw(0xa4080020);
 sh7724_rstandby_state.iprj = __raw_readw(0xa4080024);
 sh7724_rstandby_state.iprk = __raw_readw(0xa4080028);
 sh7724_rstandby_state.iprl = __raw_readw(0xa408002c);
 sh7724_rstandby_state.imr0 = __raw_readb(0xa4080080);
 sh7724_rstandby_state.imr1 = __raw_readb(0xa4080084);
 sh7724_rstandby_state.imr2 = __raw_readb(0xa4080088);
 sh7724_rstandby_state.imr3 = __raw_readb(0xa408008c);
 sh7724_rstandby_state.imr4 = __raw_readb(0xa4080090);
 sh7724_rstandby_state.imr5 = __raw_readb(0xa4080094);
 sh7724_rstandby_state.imr6 = __raw_readb(0xa4080098);
 sh7724_rstandby_state.imr7 = __raw_readb(0xa408009c);
 sh7724_rstandby_state.imr8 = __raw_readb(0xa40800a0);
 sh7724_rstandby_state.imr9 = __raw_readb(0xa40800a4);
 sh7724_rstandby_state.imr10 = __raw_readb(0xa40800a8);
 sh7724_rstandby_state.imr11 = __raw_readb(0xa40800ac);
 sh7724_rstandby_state.imr12 = __raw_readb(0xa40800b0);


 sh7724_rstandby_state.rwtcnt = __raw_readb(0xa4520000);
 sh7724_rstandby_state.rwtcnt |= 0x5a00;
 sh7724_rstandby_state.rwtcsr = __raw_readb(0xa4520004);
 sh7724_rstandby_state.rwtcsr |= 0xa500;
 __raw_writew(sh7724_rstandby_state.rwtcsr & 0x07, 0xa4520004);


 sh7724_rstandby_state.irdaclk = __raw_readl(0xa4150018);
 sh7724_rstandby_state.spuclk = __raw_readl(0xa415003c);

 return NOTIFY_DONE;
}
