
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int efi_system_table_t ;
typedef int efi_char16_t ;
struct TYPE_2__ {int text_output; } ;


 int efi_call_proto (int ,int ,int ,int *) ;
 TYPE_1__* efi_early ;
 int efi_simple_text_output_protocol ;
 int output_string ;

void efi_char16_printk(efi_system_table_t *table, efi_char16_t *str)
{
 efi_call_proto(efi_simple_text_output_protocol, output_string,
         efi_early->text_output, str);
}
