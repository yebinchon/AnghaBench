
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kvm_s390_gisa {int dummy; } ;


 scalar_t__ IPM_BIT_OFFSET ;
 int clear_bit_inv (scalar_t__,unsigned long*) ;

__attribute__((used)) static inline void gisa_clear_ipm_gisc(struct kvm_s390_gisa *gisa, u32 gisc)
{
 clear_bit_inv(IPM_BIT_OFFSET + gisc, (unsigned long *) gisa);
}
