
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu {unsigned int last_nonleaf_level; } ;


 unsigned int PT_PAGE_SIZE_MASK ;
 unsigned int PT_PAGE_TABLE_LEVEL ;

__attribute__((used)) static inline bool is_last_gpte(struct kvm_mmu *mmu,
    unsigned level, unsigned gpte)
{





 gpte &= level - mmu->last_nonleaf_level;






 gpte |= level - PT_PAGE_TABLE_LEVEL - 1;

 return gpte & PT_PAGE_SIZE_MASK;
}
