
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* opd; } ;
struct module {TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ sh_size; scalar_t__ sh_addr; } ;
typedef TYPE_2__ Elf64_Shdr ;


 void* dereference_function_descriptor (void*) ;

void *dereference_module_function_descriptor(struct module *mod, void *ptr)
{
 Elf64_Shdr *opd = mod->arch.opd;

 if (ptr < (void *)opd->sh_addr ||
   ptr >= (void *)(opd->sh_addr + opd->sh_size))
  return ptr;

 return dereference_function_descriptor(ptr);
}
