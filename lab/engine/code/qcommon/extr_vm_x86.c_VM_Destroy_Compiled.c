
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int codeBase; int codeLength; } ;
typedef TYPE_1__ vm_t ;


 int MEM_RELEASE ;
 int VirtualFree (int ,int ,int ) ;
 int free (int ) ;
 int munmap (int ,int ) ;

void VM_Destroy_Compiled(vm_t* self)
{





 free(self->codeBase);

}
