
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vmcs12 {unsigned int exception_bitmap; int page_fault_error_code_mask; int page_fault_error_code_match; } ;


 unsigned int PF_VECTOR ;

__attribute__((used)) static bool nested_vmx_is_page_fault_vmexit(struct vmcs12 *vmcs12,
         u16 error_code)
{
 bool inequality, bit;

 bit = (vmcs12->exception_bitmap & (1u << PF_VECTOR)) != 0;
 inequality =
  (error_code & vmcs12->page_fault_error_code_mask) !=
   vmcs12->page_fault_error_code_match;
 return inequality ^ bit;
}
