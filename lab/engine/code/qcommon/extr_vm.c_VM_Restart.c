
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {intptr_t (* systemCall ) (intptr_t*) ;int name; scalar_t__ dllHandle; } ;
typedef TYPE_1__ vm_t ;
typedef int vmHeader_t ;
typedef int qboolean ;
typedef int name ;


 int Com_Error (int ,char*) ;
 int Com_Printf (char*) ;
 int ERR_DROP ;
 int FS_FreeFile (int *) ;
 int MAX_QPATH ;
 int Q_strncpyz (char*,int ,int) ;
 int VMI_NATIVE ;
 TYPE_1__* VM_Create (char*,intptr_t (*) (intptr_t*),int ) ;
 int VM_Free (TYPE_1__*) ;
 int * VM_LoadQVM (TYPE_1__*,int ,int ) ;
 int qfalse ;

vm_t *VM_Restart(vm_t *vm, qboolean unpure)
{
 vmHeader_t *header;


 if ( vm->dllHandle ) {
  char name[MAX_QPATH];
  intptr_t (*systemCall)( intptr_t *parms );

  systemCall = vm->systemCall;
  Q_strncpyz( name, vm->name, sizeof( name ) );

  VM_Free( vm );

  vm = VM_Create( name, systemCall, VMI_NATIVE );
  return vm;
 }


 Com_Printf("VM_Restart()\n");

 if(!(header = VM_LoadQVM(vm, qfalse, unpure)))
 {
  Com_Error(ERR_DROP, "VM_Restart failed");
  return ((void*)0);
 }


 FS_FreeFile(header);

 return vm;
}
