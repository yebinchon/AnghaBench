
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real_pte_t ;


 int __rpte_to_hidx (int ,unsigned long) ;
 int hpte_soft_invalid (int ) ;

bool __rpte_sub_valid(real_pte_t rpte, unsigned long index)
{
 return !(hpte_soft_invalid(__rpte_to_hidx(rpte, index)));
}
