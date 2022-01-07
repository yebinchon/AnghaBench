
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kvm_mtrr {int deftype; } ;


 int IA32_MTRR_DEF_TYPE_TYPE_MASK ;

__attribute__((used)) static u8 mtrr_default_type(struct kvm_mtrr *mtrr_state)
{
 return mtrr_state->deftype & IA32_MTRR_DEF_TYPE_TYPE_MASK;
}
