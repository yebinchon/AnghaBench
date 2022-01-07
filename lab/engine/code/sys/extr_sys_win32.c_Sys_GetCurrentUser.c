
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_userName ;


 int GetUserName (char*,unsigned long*) ;
 int strcpy (char*,char*) ;

char *Sys_GetCurrentUser( void )
{
 static char s_userName[1024];
 unsigned long size = sizeof( s_userName );

 if( !GetUserName( s_userName, &size ) )
  strcpy( s_userName, "player" );

 if( !s_userName[0] )
 {
  strcpy( s_userName, "player" );
 }

 return s_userName;
}
