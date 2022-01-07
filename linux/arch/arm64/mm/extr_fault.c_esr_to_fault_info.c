
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fault_info {int dummy; } ;


 unsigned int ESR_ELx_FSC ;
 struct fault_info const* fault_info ;

__attribute__((used)) static inline const struct fault_info *esr_to_fault_info(unsigned int esr)
{
 return fault_info + (esr & ESR_ELx_FSC);
}
