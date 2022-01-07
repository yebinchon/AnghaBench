
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mtrr {int deftype; } ;


 int IA32_MTRR_DEF_TYPE_FE ;

__attribute__((used)) static bool fixed_mtrr_is_enabled(struct kvm_mtrr *mtrr_state)
{
 return !!(mtrr_state->deftype & IA32_MTRR_DEF_TYPE_FE);
}
