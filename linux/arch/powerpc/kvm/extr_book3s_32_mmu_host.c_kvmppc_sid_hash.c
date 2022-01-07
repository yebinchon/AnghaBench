
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct kvm_vcpu {int dummy; } ;


 int SID_MAP_BITS ;
 int SID_MAP_MASK ;

__attribute__((used)) static u16 kvmppc_sid_hash(struct kvm_vcpu *vcpu, u64 gvsid)
{
 return (u16)(((gvsid >> (SID_MAP_BITS * 7)) & SID_MAP_MASK) ^
       ((gvsid >> (SID_MAP_BITS * 6)) & SID_MAP_MASK) ^
       ((gvsid >> (SID_MAP_BITS * 5)) & SID_MAP_MASK) ^
       ((gvsid >> (SID_MAP_BITS * 4)) & SID_MAP_MASK) ^
       ((gvsid >> (SID_MAP_BITS * 3)) & SID_MAP_MASK) ^
       ((gvsid >> (SID_MAP_BITS * 2)) & SID_MAP_MASK) ^
       ((gvsid >> (SID_MAP_BITS * 1)) & SID_MAP_MASK) ^
       ((gvsid >> (SID_MAP_BITS * 0)) & SID_MAP_MASK));
}
