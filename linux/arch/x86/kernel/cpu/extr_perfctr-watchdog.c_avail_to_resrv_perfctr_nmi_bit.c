
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned int NMI_MAX_COUNTER_BITS ;
 int perfctr_nmi_owner ;
 int test_bit (unsigned int,int ) ;

int avail_to_resrv_perfctr_nmi_bit(unsigned int counter)
{
 BUG_ON(counter > NMI_MAX_COUNTER_BITS);

 return !test_bit(counter, perfctr_nmi_owner);
}
