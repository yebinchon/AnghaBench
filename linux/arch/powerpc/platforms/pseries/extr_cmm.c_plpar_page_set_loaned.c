
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_PAGE_INIT ;
 int H_PAGE_SET_ACTIVE ;
 int H_PAGE_SET_LOANED ;
 int PAGE_SIZE ;
 unsigned long cmo_get_page_size () ;
 long plpar_hcall_norets (int ,int ,unsigned long,int ) ;

__attribute__((used)) static long plpar_page_set_loaned(unsigned long vpa)
{
 unsigned long cmo_page_sz = cmo_get_page_size();
 long rc = 0;
 int i;

 for (i = 0; !rc && i < PAGE_SIZE; i += cmo_page_sz)
  rc = plpar_hcall_norets(H_PAGE_INIT, H_PAGE_SET_LOANED, vpa + i, 0);

 for (i -= cmo_page_sz; rc && i != 0; i -= cmo_page_sz)
  plpar_hcall_norets(H_PAGE_INIT, H_PAGE_SET_ACTIVE,
       vpa + i - cmo_page_sz, 0);

 return rc;
}
