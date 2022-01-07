
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuid {int machine; } ;


 int get_cpu_id (struct cpuid*) ;
 int sclp_early_printk (char*) ;
 int strcat (char*,char*) ;
 int u16_to_hex (char*,int ) ;

__attribute__((used)) static void print_machine_type(void)
{
 static char mach_str[80] = "Detected machine-type number: ";
 char type_str[5];
 struct cpuid id;

 get_cpu_id(&id);
 u16_to_hex(type_str, id.machine);
 strcat(mach_str, type_str);
 strcat(mach_str, "\n");
 sclp_early_printk(mach_str);
}
