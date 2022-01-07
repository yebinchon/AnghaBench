
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpa_data {unsigned int numpages; } ;


 int __cpa_addr (struct cpa_data*,unsigned int) ;
 int __flush_tlb_one_kernel (int ) ;
 int fix_addr (int ) ;

void __cpa_flush_tlb(void *data)
{
 struct cpa_data *cpa = data;
 unsigned int i;

 for (i = 0; i < cpa->numpages; i++)
  __flush_tlb_one_kernel(fix_addr(__cpa_addr(cpa, i)));
}
