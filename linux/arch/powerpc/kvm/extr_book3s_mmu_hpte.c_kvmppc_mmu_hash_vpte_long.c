
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HPTEG_HASH_BITS_VPTE_LONG ;
 int hash_64 (int,int ) ;

__attribute__((used)) static inline u64 kvmppc_mmu_hash_vpte_long(u64 vpage)
{
 return hash_64((vpage & 0xffffff000ULL) >> 12,
         HPTEG_HASH_BITS_VPTE_LONG);
}
