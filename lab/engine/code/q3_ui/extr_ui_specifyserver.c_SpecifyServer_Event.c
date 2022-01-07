
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int id; } ;
typedef TYPE_5__ menucommon_s ;
struct TYPE_7__ {int * buffer; } ;
struct TYPE_8__ {TYPE_1__ field; } ;
struct TYPE_9__ {int * buffer; } ;
struct TYPE_10__ {TYPE_3__ field; } ;
struct TYPE_12__ {TYPE_2__ port; TYPE_4__ domain; } ;


 int Com_sprintf (char*,int,char*,int *) ;
 int EXEC_APPEND ;


 int QM_ACTIVATED ;
 int UI_PopMenu () ;
 TYPE_6__ s_specifyserver ;
 int strcpy (char*,int *) ;
 int strlen (char*) ;
 int trap_Cmd_ExecuteText (int ,int ) ;
 int va (char*,char*) ;

__attribute__((used)) static void SpecifyServer_Event( void* ptr, int event )
{
 char buff[256];

 switch (((menucommon_s*)ptr)->id)
 {
  case 128:
   if (event != QM_ACTIVATED)
    break;

   if (s_specifyserver.domain.field.buffer[0])
   {
    strcpy(buff,s_specifyserver.domain.field.buffer);
    if (s_specifyserver.port.field.buffer[0])
     Com_sprintf( buff+strlen(buff), 128, ":%s", s_specifyserver.port.field.buffer );

    trap_Cmd_ExecuteText( EXEC_APPEND, va( "connect %s\n", buff ) );
   }
   break;

  case 129:
   if (event != QM_ACTIVATED)
    break;

   UI_PopMenu();
   break;
 }
}
