
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ESR_ELx_EA ;
 unsigned int ESR_ELx_EA_SHIFT ;
 int ESR_ELx_EC (unsigned int) ;
 unsigned int ESR_ELx_FnV ;
 unsigned int ESR_ELx_FnV_SHIFT ;
 unsigned int ESR_ELx_IL ;
 unsigned int ESR_ELx_S1PTW ;
 unsigned int ESR_ELx_S1PTW_SHIFT ;
 unsigned int ESR_ELx_SET_MASK ;
 unsigned int ESR_ELx_SET_SHIFT ;
 int data_abort_decode (unsigned int) ;
 int esr_get_class_string (unsigned int) ;
 scalar_t__ esr_is_data_abort (unsigned int) ;
 int pr_alert (char*,...) ;

__attribute__((used)) static void mem_abort_decode(unsigned int esr)
{
 pr_alert("Mem abort info:\n");

 pr_alert("  ESR = 0x%08x\n", esr);
 pr_alert("  EC = 0x%02lx: %s, IL = %u bits\n",
   ESR_ELx_EC(esr), esr_get_class_string(esr),
   (esr & ESR_ELx_IL) ? 32 : 16);
 pr_alert("  SET = %lu, FnV = %lu\n",
   (esr & ESR_ELx_SET_MASK) >> ESR_ELx_SET_SHIFT,
   (esr & ESR_ELx_FnV) >> ESR_ELx_FnV_SHIFT);
 pr_alert("  EA = %lu, S1PTW = %lu\n",
   (esr & ESR_ELx_EA) >> ESR_ELx_EA_SHIFT,
   (esr & ESR_ELx_S1PTW) >> ESR_ELx_S1PTW_SHIFT);

 if (esr_is_data_abort(esr))
  data_abort_decode(esr);
}
