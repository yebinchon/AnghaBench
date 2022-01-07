
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int pkey_access_permitted (int ,int,int) ;
 int pkey_disabled ;
 int pte_to_pkey_bits (int ) ;
 scalar_t__ static_branch_likely (int *) ;

bool arch_pte_access_permitted(u64 pte, bool write, bool execute)
{
 if (static_branch_likely(&pkey_disabled))
  return 1;

 return pkey_access_permitted(pte_to_pkey_bits(pte), write, execute);
}
