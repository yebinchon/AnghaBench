
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int demoExt ;
struct TYPE_2__ {int integer; } ;


 int Com_sprintf (char*,int,char*,int ,int ) ;
 int DEMOEXT ;
 int Field_CompleteFilename (char*,char*,int ,int ) ;
 TYPE_1__* com_protocol ;
 int qtrue ;

__attribute__((used)) static void CL_CompleteDemoName( char *args, int argNum )
{
 if( argNum == 2 )
 {
  char demoExt[ 16 ];

  Com_sprintf(demoExt, sizeof(demoExt), ".%s%d", DEMOEXT, com_protocol->integer);
  Field_CompleteFilename( "demos", demoExt, qtrue, qtrue );
 }
}
