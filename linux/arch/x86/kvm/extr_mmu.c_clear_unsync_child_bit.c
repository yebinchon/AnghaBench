
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_page {int unsync_child_bitmap; scalar_t__ unsync_children; } ;


 int WARN_ON (int) ;
 int __clear_bit (int,int ) ;

__attribute__((used)) static inline void clear_unsync_child_bit(struct kvm_mmu_page *sp, int idx)
{
 --sp->unsync_children;
 WARN_ON((int)sp->unsync_children < 0);
 __clear_bit(idx, sp->unsync_child_bitmap);
}
