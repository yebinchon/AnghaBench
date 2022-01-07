
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int kprobe_opcode_t ;


 int KSYM_NAME_LEN ;
 int MODULE_NAME_LEN ;
 unsigned long ftrace_location_range (unsigned long,unsigned long) ;
 scalar_t__ kallsyms_lookup_name (char const*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ ppc_function_entry (int *) ;
 char* strnchr (char const*,int ,char) ;
 scalar_t__ strscpy (char*,char const*,int) ;

kprobe_opcode_t *kprobe_lookup_name(const char *name, unsigned int offset)
{
 kprobe_opcode_t *addr = ((void*)0);
 addr = (kprobe_opcode_t *)kallsyms_lookup_name(name);


 return addr;
}
