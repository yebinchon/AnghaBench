
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int programStack; long (* systemCall ) (intptr_t*) ;scalar_t__ dataBase; } ;
typedef TYPE_1__ vm_t ;
struct tms {scalar_t__ tms_utime; } ;
typedef scalar_t__ clock_t ;
typedef int byte ;


 long ARRAY_LEN (intptr_t*) ;
 int MAX_VMSYSCALL_ARGS ;
 TYPE_1__* currentVM ;
 long stub1 (intptr_t*) ;
 long stub2 (intptr_t*) ;
 scalar_t__ time_outside_vm ;
 int times (struct tms*) ;

__attribute__((used)) static long int
VM_AsmCall( int callSyscallInvNum, int callProgramStack )
{
 vm_t *savedVM = currentVM;
 long int i, ret;







 currentVM->programStack = callProgramStack - 4;


 if ( sizeof( intptr_t ) == sizeof( int ) ) {
  intptr_t *argPosition = (intptr_t *)((byte *)currentVM->dataBase + callProgramStack + 4);


  argPosition[ 0 ] = -1 - callSyscallInvNum;

  ret = currentVM->systemCall( argPosition );
 } else {
  intptr_t args[MAX_VMSYSCALL_ARGS];


  args[0] = -1 - callSyscallInvNum;

  int *argPosition = (int *)((byte *)currentVM->dataBase + callProgramStack + 4);
  for( i = 1; i < ARRAY_LEN(args); i++ )
   args[ i ] = argPosition[ i ];

  ret = currentVM->systemCall( args );
 }

 currentVM = savedVM;






 return ret;
}
