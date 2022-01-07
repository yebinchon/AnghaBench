
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_UPDATE_CUSTOM_ITEMS ;
 int VM_Call (int ,int ) ;
 int cgvm ;

void CL_UpdateCustomItems_f( void ) {
 VM_Call( cgvm, CG_UPDATE_CUSTOM_ITEMS );
}
