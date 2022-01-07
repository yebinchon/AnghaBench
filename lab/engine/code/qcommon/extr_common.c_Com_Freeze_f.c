
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Milliseconds () ;
 int Com_Printf (char*) ;
 float atof (int ) ;

__attribute__((used)) static void Com_Freeze_f (void) {
 float s;
 int start, now;

 if ( Cmd_Argc() != 2 ) {
  Com_Printf( "freeze <seconds>\n" );
  return;
 }
 s = atof( Cmd_Argv(1) );

 start = Com_Milliseconds();

 while ( 1 ) {
  now = Com_Milliseconds();
  if ( ( now - start ) * 0.001 > s ) {
   break;
  }
 }
}
