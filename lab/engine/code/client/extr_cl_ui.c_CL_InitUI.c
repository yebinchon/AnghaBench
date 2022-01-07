
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vmInterpret_t ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {int uiStarted; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_AUTHORIZING ;
 int CL_UISystemCalls ;
 int Com_Error (int ,char*,...) ;
 scalar_t__ Cvar_VariableValue (char*) ;
 int ERR_DROP ;
 int ERR_FATAL ;
 int UI_API_VERSION ;
 int UI_GETAPIVERSION ;
 int UI_INIT ;
 int UI_OLD_API_VERSION ;
 scalar_t__ VMI_BYTECODE ;
 scalar_t__ VMI_COMPILED ;
 int VM_Call (int *,int ,...) ;
 int * VM_Create (char*,int ,scalar_t__) ;
 int VM_Free (int *) ;
 scalar_t__ cl_connectedToPureServer ;
 TYPE_2__ clc ;
 TYPE_1__ cls ;
 int qfalse ;
 int * uivm ;

void CL_InitUI( void ) {
 int v;
 vmInterpret_t interpret;


 interpret = Cvar_VariableValue("vm_ui");
 if(cl_connectedToPureServer)
 {

  if(interpret != VMI_COMPILED && interpret != VMI_BYTECODE)
   interpret = VMI_COMPILED;
 }

 uivm = VM_Create( "ui", CL_UISystemCalls, interpret );
 if ( !uivm ) {
  Com_Error( ERR_FATAL, "VM_Create on UI failed" );
 }


 v = VM_Call( uivm, UI_GETAPIVERSION );
 if (v == UI_OLD_API_VERSION) {


  VM_Call( uivm, UI_INIT, (clc.state >= CA_AUTHORIZING && clc.state < CA_ACTIVE));
 }
 else if (v != UI_API_VERSION) {

  VM_Free( uivm );
  uivm = ((void*)0);

  Com_Error( ERR_DROP, "User Interface is version %d, expected %d", v, UI_API_VERSION );
  cls.uiStarted = qfalse;
 }
 else {

  VM_Call( uivm, UI_INIT, (clc.state >= CA_AUTHORIZING && clc.state < CA_ACTIVE) );
 }
}
