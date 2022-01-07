
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMCR_L1DCFG ;
 int IMCR_L1PCFG ;
 unsigned int imcr_get (int ) ;
 int imcr_set (int ,int) ;

void L1_cache_on(void)
{
 unsigned int dummy;

 imcr_set(IMCR_L1PCFG, 7);
 dummy = imcr_get(IMCR_L1PCFG);

 imcr_set(IMCR_L1DCFG, 7);
 dummy = imcr_get(IMCR_L1DCFG);
}
