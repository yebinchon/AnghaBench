
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1111 {scalar_t__ base; } ;


 scalar_t__ SA1111_SKCDR ;
 unsigned int* opdiv_table ;
 unsigned int readl_relaxed (scalar_t__) ;

__attribute__((used)) static unsigned int __sa1111_pll_clock(struct sa1111 *sachip)
{
 unsigned int skcdr, fbdiv, ipdiv, opdiv;

 skcdr = readl_relaxed(sachip->base + SA1111_SKCDR);

 fbdiv = (skcdr & 0x007f) + 2;
 ipdiv = ((skcdr & 0x0f80) >> 7) + 2;
 opdiv = opdiv_table[(skcdr & 0x3000) >> 12];

 return 3686400 * fbdiv / (ipdiv * opdiv);
}
