
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvmppc_spapr_tce_table {int dummy; } ;


 unsigned long ALIGN (unsigned long,unsigned long) ;
 unsigned long PAGE_SIZE ;

__attribute__((used)) static unsigned long kvmppc_stt_pages(unsigned long tce_pages)
{
 unsigned long stt_bytes = sizeof(struct kvmppc_spapr_tce_table) +
   (tce_pages * sizeof(struct page *));

 return tce_pages + ALIGN(stt_bytes, PAGE_SIZE) / PAGE_SIZE;
}
