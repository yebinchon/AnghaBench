
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int widthInChars; } ;


 int Field_Clear (TYPE_1__*) ;
 int KEYCATCH_MESSAGE ;
 int Key_GetCatcher () ;
 int Key_SetCatcher (int) ;
 TYPE_1__ chatField ;
 int chat_playerNum ;
 int chat_team ;
 int qtrue ;

void Con_MessageMode2_f (void) {
 chat_playerNum = -1;
 chat_team = qtrue;
 Field_Clear( &chatField );
 chatField.widthInChars = 25;
 Key_SetCatcher( Key_GetCatcher( ) ^ KEYCATCH_MESSAGE );
}
