
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int numSymbols; TYPE_2__* symbols; } ;
typedef TYPE_1__ vm_t ;
struct TYPE_8__ {double profileCount; int symName; struct TYPE_8__* next; } ;
typedef TYPE_2__ vmSymbol_t ;


 int Com_Printf (char*,double,...) ;
 int VM_ProfileSort ;
 int Z_Free (TYPE_2__**) ;
 TYPE_2__** Z_Malloc (int) ;
 TYPE_1__* lastVM ;
 int qsort (TYPE_2__**,int,int,int ) ;

void VM_VmProfile_f( void ) {
 vm_t *vm;
 vmSymbol_t **sorted, *sym;
 int i;
 double total;

 if ( !lastVM ) {
  return;
 }

 vm = lastVM;

 if ( !vm->numSymbols ) {
  return;
 }

 sorted = Z_Malloc( vm->numSymbols * sizeof( *sorted ) );
 sorted[0] = vm->symbols;
 total = sorted[0]->profileCount;
 for ( i = 1 ; i < vm->numSymbols ; i++ ) {
  sorted[i] = sorted[i-1]->next;
  total += sorted[i]->profileCount;
 }

 qsort( sorted, vm->numSymbols, sizeof( *sorted ), VM_ProfileSort );

 for ( i = 0 ; i < vm->numSymbols ; i++ ) {
  int perc;

  sym = sorted[i];

  perc = 100 * (float) sym->profileCount / total;
  Com_Printf( "%2i%% %9i %s\n", perc, sym->profileCount, sym->symName );
  sym->profileCount = 0;
 }

 Com_Printf("    %9.0f total\n", total );

 Z_Free( sorted );
}
