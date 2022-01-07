
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HPTE_R_RPN ;
 int kvmppc_actual_pgsz (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long kvmppc_mmu_get_real_addr(unsigned long v, unsigned long r,
   unsigned long ea)
{
 unsigned long ra_mask;

 ra_mask = kvmppc_actual_pgsz(v, r) - 1;
 return (r & HPTE_R_RPN & ~ra_mask) | (ea & ra_mask);
}
