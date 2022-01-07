
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ instructionPointers; scalar_t__ dataBase; scalar_t__ codeBase; scalar_t__ dllHandle; int (* destroy ) (TYPE_1__*) ;int name; scalar_t__ callLevel; } ;
typedef TYPE_1__ vm_t ;


 int Com_Error (int ,char*,int ) ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int Com_Printf (char*,int ) ;
 int ERR_FATAL ;
 int Sys_UnloadDll (scalar_t__) ;
 int Z_Free (scalar_t__) ;
 int * currentVM ;
 int forced_unload ;
 int * lastVM ;
 int stub1 (TYPE_1__*) ;

void VM_Free( vm_t *vm ) {

 if(!vm) {
  return;
 }

 if(vm->callLevel) {
  if(!forced_unload) {
   Com_Error( ERR_FATAL, "VM_Free(%s) on running vm", vm->name );
   return;
  } else {
   Com_Printf( "forcefully unloading %s vm\n", vm->name );
  }
 }

 if(vm->destroy)
  vm->destroy(vm);

 if ( vm->dllHandle ) {
  Sys_UnloadDll( vm->dllHandle );
  Com_Memset( vm, 0, sizeof( *vm ) );
 }
 Com_Memset( vm, 0, sizeof( *vm ) );

 currentVM = ((void*)0);
 lastVM = ((void*)0);
}
