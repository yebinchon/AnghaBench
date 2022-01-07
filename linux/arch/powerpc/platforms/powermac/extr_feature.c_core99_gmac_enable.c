
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int LOCK (unsigned long) ;
 int UNI_N_CLOCK_CNTL ;
 int UNI_N_CLOCK_CNTL_GMAC ;
 int UNLOCK (unsigned long) ;
 int UN_BIC (int ,int ) ;
 int UN_BIS (int ,int ) ;
 int UN_IN (int ) ;
 int udelay (int) ;

__attribute__((used)) static long
core99_gmac_enable(struct device_node *node, long param, long value)
{
 unsigned long flags;

 LOCK(flags);
 if (value)
  UN_BIS(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_GMAC);
 else
  UN_BIC(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_GMAC);
 (void)UN_IN(UNI_N_CLOCK_CNTL);
 UNLOCK(flags);
 udelay(20);

 return 0;
}
