
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int widthInChars; } ;


 int CG_CROSSHAIR_PLAYER ;
 int Field_Clear (TYPE_1__*) ;
 int KEYCATCH_MESSAGE ;
 int Key_GetCatcher () ;
 int Key_SetCatcher (int) ;
 int MAX_CLIENTS ;
 int VM_Call (int ,int ) ;
 int cgvm ;
 TYPE_1__ chatField ;
 int chat_playerNum ;
 int chat_team ;
 int qfalse ;

void Con_MessageMode3_f (void) {
 chat_playerNum = VM_Call( cgvm, CG_CROSSHAIR_PLAYER );
 if ( chat_playerNum < 0 || chat_playerNum >= MAX_CLIENTS ) {
  chat_playerNum = -1;
  return;
 }
 chat_team = qfalse;
 Field_Clear( &chatField );
 chatField.widthInChars = 30;
 Key_SetCatcher( Key_GetCatcher( ) ^ KEYCATCH_MESSAGE );
}
