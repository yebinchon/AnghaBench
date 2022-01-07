
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vmInterpret_t ;
struct TYPE_5__ {char* stringData; int* stringOffsets; } ;
struct TYPE_8__ {int mapname; TYPE_1__ gameState; } ;
struct TYPE_7__ {int state; int demoplaying; int clientNum; int lastExecutedServerCommand; int serverMessageSequence; } ;
struct TYPE_6__ {int (* EndRegistration ) () ;} ;


 int CA_LOADING ;
 int CA_PRIMED ;
 int CG_INIT ;
 int CL_CgameSystemCalls ;
 size_t CS_SERVERINFO ;
 int Com_Error (int ,char*) ;
 int Com_Printf (char*,int) ;
 int Com_TouchMemory () ;
 int Com_sprintf (int ,int,char*,char const*) ;
 int Con_ClearNotify () ;
 int Con_Close () ;
 int Cvar_SetCheatState () ;
 scalar_t__ Cvar_VariableValue (char*) ;
 int ERR_DROP ;
 char* Info_ValueForKey (char const*,char*) ;
 int Sys_LowPhysicalMemory () ;
 int Sys_Milliseconds () ;
 scalar_t__ VMI_BYTECODE ;
 scalar_t__ VMI_COMPILED ;
 int VM_Call (int ,int ,int ,int ,int ) ;
 int VM_Create (char*,int ,scalar_t__) ;
 int cgvm ;
 TYPE_4__ cl ;
 int cl_connectedToCheatServer ;
 scalar_t__ cl_connectedToPureServer ;
 TYPE_3__ clc ;
 TYPE_2__ re ;
 int stub1 () ;

void CL_InitCGame( void ) {
 const char *info;
 const char *mapname;
 int t1, t2;
 vmInterpret_t interpret;

 t1 = Sys_Milliseconds();


 Con_Close();


 info = cl.gameState.stringData + cl.gameState.stringOffsets[ CS_SERVERINFO ];
 mapname = Info_ValueForKey( info, "mapname" );
 Com_sprintf( cl.mapname, sizeof( cl.mapname ), "maps/%s.bsp", mapname );


 interpret = Cvar_VariableValue("vm_cgame");
 if(cl_connectedToPureServer)
 {

  if(interpret != VMI_COMPILED && interpret != VMI_BYTECODE)
   interpret = VMI_COMPILED;
 }

 cgvm = VM_Create( "cgame", CL_CgameSystemCalls, interpret );
 if ( !cgvm ) {
  Com_Error( ERR_DROP, "VM_Create on cgame failed" );
 }
 clc.state = CA_LOADING;




 VM_Call( cgvm, CG_INIT, clc.serverMessageSequence, clc.lastExecutedServerCommand, clc.clientNum );


 if ( !clc.demoplaying && !cl_connectedToCheatServer )
  Cvar_SetCheatState();



 clc.state = CA_PRIMED;

 t2 = Sys_Milliseconds();

 Com_Printf( "CL_InitCGame: %5.2f seconds\n", (t2-t1)/1000.0 );



 re.EndRegistration();


 if (!Sys_LowPhysicalMemory()) {
  Com_TouchMemory();
 }


 Con_ClearNotify ();
}
