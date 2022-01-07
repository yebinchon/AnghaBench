
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t ESR_ELx_EC (int ) ;
 char const** esr_class_str ;

const char *esr_get_class_string(u32 esr)
{
 return esr_class_str[ESR_ELx_EC(esr)];
}
