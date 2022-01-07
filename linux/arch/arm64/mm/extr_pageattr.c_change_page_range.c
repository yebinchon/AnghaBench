
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_change_data {int set_mask; int clear_mask; } ;
typedef int pte_t ;


 int READ_ONCE (int ) ;
 int clear_pte_bit (int ,int ) ;
 int set_pte (int *,int ) ;
 int set_pte_bit (int ,int ) ;

__attribute__((used)) static int change_page_range(pte_t *ptep, unsigned long addr, void *data)
{
 struct page_change_data *cdata = data;
 pte_t pte = READ_ONCE(*ptep);

 pte = clear_pte_bit(pte, cdata->clear_mask);
 pte = set_pte_bit(pte, cdata->set_mask);

 set_pte(ptep, pte);
 return 0;
}
