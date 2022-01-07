
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_s390_gisa {int ipm; } ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline u8 gisa_get_ipm(struct kvm_s390_gisa *gisa)
{
 return READ_ONCE(gisa->ipm);
}
