
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* symbols; } ;
typedef TYPE_1__ vm_t ;
struct TYPE_6__ {int symValue; struct TYPE_6__* next; } ;
typedef TYPE_2__ vmSymbol_t ;



vmSymbol_t *VM_ValueToFunctionSymbol( vm_t *vm, int value ) {
 vmSymbol_t *sym;
 static vmSymbol_t nullSym;

 sym = vm->symbols;
 if ( !sym ) {
  return &nullSym;
 }

 while ( sym->next && sym->next->symValue <= value ) {
  sym = sym->next;
 }

 return sym;
}
