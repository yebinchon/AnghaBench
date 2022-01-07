
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
typedef int cmd ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {int * binding; } ;


 scalar_t__ CA_DISCONNECTED ;
 scalar_t__ CL_BindUICommand (char*) ;
 int Cbuf_AddText (char*) ;
 int Com_sprintf (char*,int,char*,char,char*,int,unsigned int) ;
 scalar_t__ Key_GetCatcher () ;
 int MAX_STRING_CHARS ;
 int Q_strncpyz (char*,int *,int) ;
 TYPE_2__ clc ;
 scalar_t__ isspace (char) ;
 TYPE_1__* keys ;
 char* strchr (char*,char) ;

void CL_ParseBinding( int key, qboolean down, unsigned time )
{
 char buf[ MAX_STRING_CHARS ], *p = buf, *end;
 qboolean allCommands, allowUpCmds;

 if( clc.state == CA_DISCONNECTED && Key_GetCatcher( ) == 0 )
  return;
 if( !keys[key].binding || !keys[key].binding[0] )
  return;
 Q_strncpyz( buf, keys[key].binding, sizeof( buf ) );


 allCommands = ( Key_GetCatcher( ) == 0 );


 allowUpCmds = ( clc.state != CA_DISCONNECTED );

 while( 1 )
 {
  while( isspace( *p ) )
   p++;
  end = strchr( p, ';' );
  if( end )
   *end = '\0';
  if( *p == '+' )
  {



   if ( allCommands || ( allowUpCmds && !down ) ) {
    char cmd[1024];
    Com_sprintf( cmd, sizeof( cmd ), "%c%s %d %d\n",
     ( down ) ? '+' : '-', p + 1, key, time );
    Cbuf_AddText( cmd );
   }
  }
  else if( down )
  {

   if ( allCommands || CL_BindUICommand( p ) ) {
    Cbuf_AddText( p );
    Cbuf_AddText( "\n" );
   }
  }
  if( !end )
   break;
  p = end + 1;
 }
}
