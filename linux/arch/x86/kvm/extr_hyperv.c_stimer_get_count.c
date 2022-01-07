
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu_hv_stimer {int count; } ;



__attribute__((used)) static int stimer_get_count(struct kvm_vcpu_hv_stimer *stimer, u64 *pcount)
{
 *pcount = stimer->count;
 return 0;
}
