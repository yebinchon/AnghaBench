
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int evTime; } ;
typedef TYPE_1__ sysEvent_t ;
typedef int ev ;


 int Com_QueueEvent (int ,int ,int ,int ,int,char*) ;
 int MASK_QUEUED_EVENTS ;
 int SE_CONSOLE ;
 char* Sys_ConsoleInput () ;
 int Sys_Milliseconds () ;
 char* Z_Malloc (int) ;
 int eventHead ;
 TYPE_1__* eventQueue ;
 int eventTail ;
 int memset (TYPE_1__*,int ,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

sysEvent_t Com_GetSystemEvent( void )
{
 sysEvent_t ev;
 char *s;


 if ( eventHead > eventTail )
 {
  eventTail++;
  return eventQueue[ ( eventTail - 1 ) & MASK_QUEUED_EVENTS ];
 }


 s = Sys_ConsoleInput();
 if ( s )
 {
  char *b;
  int len;

  len = strlen( s ) + 1;
  b = Z_Malloc( len );
  strcpy( b, s );
  Com_QueueEvent( 0, SE_CONSOLE, 0, 0, len, b );
 }


 if ( eventHead > eventTail )
 {
  eventTail++;
  return eventQueue[ ( eventTail - 1 ) & MASK_QUEUED_EVENTS ];
 }


 memset( &ev, 0, sizeof( ev ) );
 ev.evTime = Sys_Milliseconds();

 return ev;
}
