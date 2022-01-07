
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_shadow_walk_iterator {int shadow_addr; scalar_t__ level; } ;


 int PT64_BASE_ADDR_MASK ;
 scalar_t__ is_last_spte (int,scalar_t__) ;

__attribute__((used)) static void __shadow_walk_next(struct kvm_shadow_walk_iterator *iterator,
          u64 spte)
{
 if (is_last_spte(spte, iterator->level)) {
  iterator->level = 0;
  return;
 }

 iterator->shadow_addr = spte & PT64_BASE_ADDR_MASK;
 --iterator->level;
}
