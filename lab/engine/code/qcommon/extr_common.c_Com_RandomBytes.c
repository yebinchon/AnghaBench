
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char byte ;


 int Com_Printf (char*) ;
 scalar_t__ Sys_RandomBytes (unsigned char*,int) ;
 int rand () ;

void Com_RandomBytes( byte *string, int len )
{
 int i;

 if( Sys_RandomBytes( string, len ) )
  return;

 Com_Printf( "Com_RandomBytes: using weak randomization\n" );
 for( i = 0; i < len; i++ )
  string[i] = (unsigned char)( rand() % 256 );
}
