
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HPTEG_HASH_BITS_PTE_LONG ;
 int PTE_SIZE ;
 int hash_64 (int,int ) ;

__attribute__((used)) static inline u64 kvmppc_mmu_hash_pte_long(u64 eaddr)
{
 return hash_64((eaddr & 0x0ffff000) >> PTE_SIZE,
         HPTEG_HASH_BITS_PTE_LONG);
}
