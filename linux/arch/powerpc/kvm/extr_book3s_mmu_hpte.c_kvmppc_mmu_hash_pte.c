
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HPTEG_HASH_BITS_PTE ;
 int PTE_SIZE ;
 int hash_64 (int,int ) ;

__attribute__((used)) static inline u64 kvmppc_mmu_hash_pte(u64 eaddr)
{
 return hash_64(eaddr >> PTE_SIZE, HPTEG_HASH_BITS_PTE);
}
