
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gpa_t ;


 scalar_t__ KVM_PIT_BASE_ADDRESS ;
 scalar_t__ KVM_PIT_MEM_LENGTH ;

__attribute__((used)) static inline int pit_in_range(gpa_t addr)
{
 return ((addr >= KVM_PIT_BASE_ADDRESS) &&
  (addr < KVM_PIT_BASE_ADDRESS + KVM_PIT_MEM_LENGTH));
}
