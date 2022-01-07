
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {scalar_t__ integer; } ;


 int Com_Printf (char*,char*) ;
 int Com_sprintf (char*,int ,char*,char*,int ,scalar_t__) ;
 int DEMOEXT ;
 int FS_FOpenFileRead (char*,int*,int ) ;
 int MAX_OSPATH ;
 TYPE_2__* com_legacyprotocol ;
 TYPE_1__* com_protocol ;
 scalar_t__* demo_protocols ;
 int qtrue ;

__attribute__((used)) static int CL_WalkDemoExt(char *arg, char *name, int *demofile)
{
 int i = 0;
 *demofile = 0;
 {
  Com_sprintf(name, MAX_OSPATH, "demos/%s.%s%d", arg, DEMOEXT, com_protocol->integer);
  FS_FOpenFileRead(name, demofile, qtrue);

  if (*demofile)
  {
   Com_Printf("Demo file: %s\n", name);
   return com_protocol->integer;
  }
 }

 Com_Printf("Not found: %s\n", name);

 while(demo_protocols[i])
 {




  if(demo_protocols[i] == com_protocol->integer)
   continue;

  Com_sprintf (name, MAX_OSPATH, "demos/%s.%s%d", arg, DEMOEXT, demo_protocols[i]);
  FS_FOpenFileRead( name, demofile, qtrue );
  if (*demofile)
  {
   Com_Printf("Demo file: %s\n", name);

   return demo_protocols[i];
  }
  else
   Com_Printf("Not found: %s\n", name);
  i++;
 }

 return -1;
}
