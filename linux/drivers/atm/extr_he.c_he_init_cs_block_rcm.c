
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct he_dev {unsigned long long tx_numbuffs; TYPE_1__* atm_dev; } ;
struct TYPE_2__ {unsigned int link_rate; } ;


 int ATM_OC3_PCR ;
 scalar_t__ CONFIG_RCMABR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ RTGTBL_OFFSET ;
 int he_writel_rcm (struct he_dev*,int,scalar_t__) ;
 int kfree (unsigned int***) ;
 unsigned int*** kmalloc (int,int ) ;

__attribute__((used)) static int he_init_cs_block_rcm(struct he_dev *he_dev)
{
 unsigned (*rategrid)[16][16];
 unsigned rate, delta;
 int i, j, reg;

 unsigned rate_atmf, exp, man;
 unsigned long long rate_cps;
 int mult, buf, buf_limit = 4;

 rategrid = kmalloc( sizeof(unsigned) * 16 * 16, GFP_KERNEL);
 if (!rategrid)
  return -ENOMEM;



 for (reg = 0x0; reg < 0xff; ++reg)
  he_writel_rcm(he_dev, 0x0, CONFIG_RCMABR + reg);



 for (reg = 0x100; reg < 0x1ff; ++reg)
  he_writel_rcm(he_dev, 0x0, CONFIG_RCMABR + reg);
 rate = he_dev->atm_dev->link_rate;
 delta = rate / 32;
 for (j = 0; j < 16; j++) {
  (*rategrid)[0][j] = rate;
  rate -= delta;
 }

 for (i = 1; i < 16; i++)
  for (j = 0; j < 16; j++)
   if (i > 14)
    (*rategrid)[i][j] = (*rategrid)[i - 1][j] / 4;
   else
    (*rategrid)[i][j] = (*rategrid)[i - 1][j] / 2;
 rate_atmf = 0;
 while (rate_atmf < 0x400) {
  man = (rate_atmf & 0x1f) << 4;
  exp = rate_atmf >> 5;





  rate_cps = (unsigned long long) (1UL << exp) * (man + 512) >> 9;

  if (rate_cps < 10)
   rate_cps = 10;

  for (i = 255; i > 0; i--)
   if ((*rategrid)[i/16][i%16] >= rate_cps)
    break;
  mult = he_dev->atm_dev->link_rate / ATM_OC3_PCR;
  if (rate_cps > (272ULL * mult))
   buf = 4;
  else if (rate_cps > (204ULL * mult))
   buf = 3;
  else if (rate_cps > (136ULL * mult))
   buf = 2;
  else if (rate_cps > (68ULL * mult))
   buf = 1;
  else
   buf = 0;

  if (buf > buf_limit)
   buf = buf_limit;
  reg = (reg << 16) | ((i << 8) | buf);



  if (rate_atmf & 0x1)
   he_writel_rcm(he_dev, reg,
    CONFIG_RCMABR + 0x400 + (rate_atmf >> 1));

  ++rate_atmf;
 }

 kfree(rategrid);
 return 0;
}
