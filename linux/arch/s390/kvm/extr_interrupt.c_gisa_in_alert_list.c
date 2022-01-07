
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct kvm_s390_gisa {int next_alert; } ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static inline int gisa_in_alert_list(struct kvm_s390_gisa *gisa)
{
 return READ_ONCE(gisa->next_alert) != (u32)(u64)gisa;
}
