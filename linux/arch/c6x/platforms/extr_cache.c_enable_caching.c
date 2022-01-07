
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IMCR_MAR_BASE ;
 int imcr_get (unsigned int) ;
 int imcr_set (unsigned int,int) ;

void enable_caching(unsigned long start, unsigned long end)
{
 unsigned int mar = IMCR_MAR_BASE + ((start >> 24) << 2);
 unsigned int mar_e = IMCR_MAR_BASE + ((end >> 24) << 2);

 for (; mar <= mar_e; mar += 4)
  imcr_set(mar, imcr_get(mar) | 1);
}
