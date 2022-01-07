
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ end_opd; scalar_t__ start_opd; } ;
struct module {TYPE_1__ arch; } ;


 void* dereference_function_descriptor (void*) ;

void *dereference_module_function_descriptor(struct module *mod, void *ptr)
{
 if (ptr < (void *)mod->arch.start_opd ||
   ptr >= (void *)mod->arch.end_opd)
  return ptr;

 return dereference_function_descriptor(ptr);
}
