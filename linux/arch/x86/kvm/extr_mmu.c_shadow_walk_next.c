
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_shadow_walk_iterator {int * sptep; } ;


 int __shadow_walk_next (struct kvm_shadow_walk_iterator*,int ) ;

__attribute__((used)) static void shadow_walk_next(struct kvm_shadow_walk_iterator *iterator)
{
 __shadow_walk_next(iterator, *iterator->sptep);
}
