
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mfp_config (unsigned long*,int) ;

__attribute__((used)) static inline void pxa3xx_mfp_config(unsigned long *mfp_cfg, int num)
{
 mfp_config(mfp_cfg, num);
}
