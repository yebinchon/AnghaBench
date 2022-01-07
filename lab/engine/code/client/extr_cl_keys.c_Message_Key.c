
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_6__ {scalar_t__* buffer; } ;
struct TYPE_5__ {scalar_t__ state; } ;


 scalar_t__ CA_ACTIVE ;
 int CL_AddReliableCommand (char*,int ) ;
 int Com_sprintf (char*,int,char*,int,...) ;
 int Field_Clear (TYPE_2__*) ;
 int Field_KeyDownEvent (TYPE_2__*,int) ;
 int KEYCATCH_MESSAGE ;
 int K_ENTER ;
 int K_ESCAPE ;
 int K_KP_ENTER ;
 int Key_GetCatcher () ;
 int Key_SetCatcher (int) ;
 int MAX_STRING_CHARS ;
 TYPE_2__ chatField ;
 int chat_playerNum ;
 scalar_t__ chat_team ;
 TYPE_1__ clc ;
 int qfalse ;

void Message_Key( int key ) {

 char buffer[MAX_STRING_CHARS];


 if (key == K_ESCAPE) {
  Key_SetCatcher( Key_GetCatcher( ) & ~KEYCATCH_MESSAGE );
  Field_Clear( &chatField );
  return;
 }

 if ( key == K_ENTER || key == K_KP_ENTER )
 {
  if ( chatField.buffer[0] && clc.state == CA_ACTIVE ) {
   if (chat_playerNum != -1 )

    Com_sprintf( buffer, sizeof( buffer ), "tell %i \"%s\"\n", chat_playerNum, chatField.buffer );

   else if (chat_team)

    Com_sprintf( buffer, sizeof( buffer ), "say_team \"%s\"\n", chatField.buffer );
   else
    Com_sprintf( buffer, sizeof( buffer ), "say \"%s\"\n", chatField.buffer );



   CL_AddReliableCommand(buffer, qfalse);
  }
  Key_SetCatcher( Key_GetCatcher( ) & ~KEYCATCH_MESSAGE );
  Field_Clear( &chatField );
  return;
 }

 Field_KeyDownEvent( &chatField, key );
}
