
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int demoExt ;
struct TYPE_2__ {int demoCount; int * demoList; } ;


 int ARRAY_LEN (char*) ;
 int Com_sprintf (char*,int,char*,int ,int) ;
 int DEMOEXT ;
 int MAX_DEMOS ;
 int NAMEBUFSIZE ;
 int String_Alloc (char*) ;
 int strlen (char*) ;
 int trap_Cvar_VariableValue (char*) ;
 int trap_FS_GetFileList (char*,char*,char*,int ) ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static void UI_LoadDemos( void ) {
 char demolist[NAMEBUFSIZE];
 char demoExt[32];
 char *demoname;
 int i, j, len;
 int protocol, protocolLegacy;

 protocolLegacy = trap_Cvar_VariableValue("com_legacyprotocol");
 protocol = trap_Cvar_VariableValue("com_protocol");

 if(!protocol)
  protocol = trap_Cvar_VariableValue("protocol");
 if(protocolLegacy == protocol)
  protocolLegacy = 0;

 Com_sprintf(demoExt, sizeof(demoExt), ".%s%d", DEMOEXT, protocol);
 uiInfo.demoCount = trap_FS_GetFileList("demos", demoExt, demolist, ARRAY_LEN(demolist));

 demoname = demolist;
 i = 0;

 for(j = 0; j < 2; j++)
 {
  if(uiInfo.demoCount > MAX_DEMOS)
   uiInfo.demoCount = MAX_DEMOS;

  for(; i < uiInfo.demoCount; i++)
  {
   len = strlen(demoname);
   uiInfo.demoList[i] = String_Alloc(demoname);
   demoname += len + 1;
  }

  if(!j)
  {
          if(protocolLegacy > 0 && uiInfo.demoCount < MAX_DEMOS)
          {
                         Com_sprintf(demoExt, sizeof(demoExt), ".%s%d", DEMOEXT, protocolLegacy);
                         uiInfo.demoCount += trap_FS_GetFileList("demos", demoExt, demolist, ARRAY_LEN(demolist));
                         demoname = demolist;
                        }
                        else
                                break;
  }
 }

}
