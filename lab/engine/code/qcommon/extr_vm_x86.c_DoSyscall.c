
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* systemCall ) (intptr_t*) ;scalar_t__ dataBase; scalar_t__ programStack; } ;
typedef TYPE_1__ vm_t ;


 int ARRAY_LEN (intptr_t*) ;
 int Com_Error (int ,char*,...) ;
 int ERR_DROP ;
 int ErrJump () ;
 int MAX_VMSYSCALL_ARGS ;

 int VM_BlockCopy (int,int,int ) ;

 TYPE_1__* currentVM ;
 int stub1 (intptr_t*) ;
 int stub2 (intptr_t*) ;
 int vm_arg ;
 int* vm_opStackBase ;
 int vm_opStackOfs ;
 scalar_t__ vm_programStack ;
 int vm_syscallNum ;

__attribute__((used)) static void DoSyscall(void)
{
 vm_t *savedVM;


 savedVM = currentVM;

 currentVM->programStack = vm_programStack - 4;

 if(vm_syscallNum < 0)
 {
  int *data, *ret;





  data = (int *) (savedVM->dataBase + vm_programStack + 4);
  ret = &vm_opStackBase[vm_opStackOfs + 1];
  data[0] = ~vm_syscallNum;
  *ret = savedVM->systemCall((intptr_t *) data);

 }
 else
 {
  switch(vm_syscallNum)
  {
  case 128:
   ErrJump();
  break;
  case 129:
   if(vm_opStackOfs < 1)
    Com_Error(ERR_DROP, "VM_BLOCK_COPY failed due to corrupted opStack");

   VM_BlockCopy(vm_opStackBase[(vm_opStackOfs - 1)], vm_opStackBase[vm_opStackOfs], vm_arg);
  break;
  default:
   Com_Error(ERR_DROP, "Unknown VM operation %d", vm_syscallNum);
  break;
  }
 }

 currentVM = savedVM;
}
