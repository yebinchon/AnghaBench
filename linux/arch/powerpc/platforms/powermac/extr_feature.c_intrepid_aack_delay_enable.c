
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 long ENODEV ;
 int LOCK (unsigned long) ;
 int UNI_N_AACK_DELAY ;
 int UNI_N_AACK_DELAY_ENABLE ;
 int UNLOCK (unsigned long) ;
 int UN_BIC (int ,int ) ;
 int UN_BIS (int ,int ) ;
 int uninorth_rev ;

__attribute__((used)) static long
intrepid_aack_delay_enable(struct device_node *node, long param, long value)
{
 unsigned long flags;

 if (uninorth_rev < 0xd2)
  return -ENODEV;

 LOCK(flags);
 if (param)
  UN_BIS(UNI_N_AACK_DELAY, UNI_N_AACK_DELAY_ENABLE);
 else
  UN_BIC(UNI_N_AACK_DELAY, UNI_N_AACK_DELAY_ENABLE);
 UNLOCK(flags);

 return 0;
}
