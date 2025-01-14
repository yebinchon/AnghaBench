
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HPTE_R_KEY_HI ;
 unsigned long HPTE_R_KEY_LO ;
 unsigned long HPTE_V_ABSENT ;

__attribute__((used)) static inline int is_mmio_hpte(unsigned long v, unsigned long r)
{
 return ((v & HPTE_V_ABSENT) &&
  (r & (HPTE_R_KEY_HI | HPTE_R_KEY_LO)) ==
  (HPTE_R_KEY_HI | HPTE_R_KEY_LO));
}
