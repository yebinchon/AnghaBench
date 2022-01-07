
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DebugPolygonDelete; int DebugPolygonCreate; int DebugLineShow; int DebugLineDelete; int DebugLineCreate; int FS_Seek; int FS_FCloseFile; int FS_Write; int FS_Read; int FS_FOpenFile; int HunkAlloc; int AvailableMemory; int FreeMemory; int GetMemory; int BotClientCommand; int BSPModelMinsMaxsOrigin; int BSPEntityData; int inPVS; int PointContents; int EntityTrace; int Trace; int Print; } ;
typedef TYPE_1__ botlib_import_t ;
typedef int botlib_export_t ;
typedef int bot_debugpoly_t ;


 int BOTLIB_API_VERSION ;
 int BotClientCommand ;
 int BotImport_BSPEntityData ;
 int BotImport_BSPModelMinsMaxsOrigin ;
 int BotImport_DebugLineCreate ;
 int BotImport_DebugLineDelete ;
 int BotImport_DebugLineShow ;
 int BotImport_DebugPolygonCreate ;
 int BotImport_DebugPolygonDelete ;
 int BotImport_EntityTrace ;
 int BotImport_FreeMemory ;
 int BotImport_GetMemory ;
 int BotImport_HunkAlloc ;
 int BotImport_PointContents ;
 int BotImport_Print ;
 int BotImport_Trace ;
 int BotImport_inPVS ;
 int Cvar_VariableIntegerValue (char*) ;
 int FS_FCloseFile ;
 int FS_FOpenFileByMode ;
 int FS_Read ;
 int FS_Seek ;
 int FS_Write ;
 scalar_t__ GetBotLibAPI (int ,TYPE_1__*) ;
 int Z_AvailableMemory ;
 int Z_Free (scalar_t__) ;
 scalar_t__ Z_Malloc (int) ;
 int assert (int *) ;
 int bot_maxdebugpolys ;
 int * botlib_export ;
 scalar_t__ debugpolygons ;

void SV_BotInitBotLib(void) {
 botlib_import_t botlib_import;

 if (debugpolygons) Z_Free(debugpolygons);
 bot_maxdebugpolys = Cvar_VariableIntegerValue("bot_maxdebugpolys");
 debugpolygons = Z_Malloc(sizeof(bot_debugpoly_t) * bot_maxdebugpolys);

 botlib_import.Print = BotImport_Print;
 botlib_import.Trace = BotImport_Trace;
 botlib_import.EntityTrace = BotImport_EntityTrace;
 botlib_import.PointContents = BotImport_PointContents;
 botlib_import.inPVS = BotImport_inPVS;
 botlib_import.BSPEntityData = BotImport_BSPEntityData;
 botlib_import.BSPModelMinsMaxsOrigin = BotImport_BSPModelMinsMaxsOrigin;
 botlib_import.BotClientCommand = BotClientCommand;


 botlib_import.GetMemory = BotImport_GetMemory;
 botlib_import.FreeMemory = BotImport_FreeMemory;
 botlib_import.AvailableMemory = Z_AvailableMemory;
 botlib_import.HunkAlloc = BotImport_HunkAlloc;


 botlib_import.FS_FOpenFile = FS_FOpenFileByMode;
 botlib_import.FS_Read = FS_Read;
 botlib_import.FS_Write = FS_Write;
 botlib_import.FS_FCloseFile = FS_FCloseFile;
 botlib_import.FS_Seek = FS_Seek;


 botlib_import.DebugLineCreate = BotImport_DebugLineCreate;
 botlib_import.DebugLineDelete = BotImport_DebugLineDelete;
 botlib_import.DebugLineShow = BotImport_DebugLineShow;


 botlib_import.DebugPolygonCreate = BotImport_DebugPolygonCreate;
 botlib_import.DebugPolygonDelete = BotImport_DebugPolygonDelete;

 botlib_export = (botlib_export_t *)GetBotLibAPI( BOTLIB_API_VERSION, &botlib_import );
 assert(botlib_export);
}
