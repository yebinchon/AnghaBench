
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMCR_CCFG ;
 unsigned int imcr_get (int ) ;
 int imcr_set (int ,unsigned int) ;

void L2_cache_set_mode(unsigned int mode)
{
 unsigned int ccfg = imcr_get(IMCR_CCFG);


 ccfg &= ~7;
 ccfg |= (mode & 7);
 imcr_set(IMCR_CCFG, ccfg);
 ccfg = imcr_get(IMCR_CCFG);
}
