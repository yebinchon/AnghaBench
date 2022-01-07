
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ad_disabled; } ;
struct kvm_mmu_page {TYPE_1__ role; } ;



__attribute__((used)) static inline bool sp_ad_disabled(struct kvm_mmu_page *sp)
{
 return sp->role.ad_disabled;
}
