
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SPTE_HOST_WRITEABLE ;
 int SPTE_MMU_WRITEABLE ;

__attribute__((used)) static bool spte_can_locklessly_be_made_writable(u64 spte)
{
 return (spte & (SPTE_HOST_WRITEABLE | SPTE_MMU_WRITEABLE)) ==
  (SPTE_HOST_WRITEABLE | SPTE_MMU_WRITEABLE);
}
