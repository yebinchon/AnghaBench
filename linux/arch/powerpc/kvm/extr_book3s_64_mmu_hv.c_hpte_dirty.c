
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revmap_entry {int guest_rpte; } ;
typedef int __be64 ;


 int HPTE_GR_MODIFIED ;
 unsigned long HPTE_R_C ;
 unsigned long HPTE_R_R ;
 unsigned long HPTE_V_VALID ;
 unsigned long be64_to_cpu (int ) ;

__attribute__((used)) static int hpte_dirty(struct revmap_entry *revp, __be64 *hptp)
{
 unsigned long rcbits_unset;

 if (revp->guest_rpte & HPTE_GR_MODIFIED)
  return 1;


 rcbits_unset = ~revp->guest_rpte & (HPTE_R_R | HPTE_R_C);
 if ((be64_to_cpu(hptp[0]) & HPTE_V_VALID) &&
     (be64_to_cpu(hptp[1]) & rcbits_unset))
  return 1;

 return 0;
}
