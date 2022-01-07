
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* arg; } ;
typedef TYPE_1__ game_t ;


 scalar_t__ Q_stricmp (char*,char*) ;
 int Sys_Printf (char*) ;
 int exit (int ) ;
 TYPE_1__* games ;

game_t *GetGame( char *arg ){
 int i;



 if ( arg == ((void*)0) || arg[ 0 ] == '\0' ) {
  return ((void*)0);
 }


 if ( !Q_stricmp( arg, "quake1" ) ||
   !Q_stricmp( arg, "quake2" ) ||
   !Q_stricmp( arg, "unreal" ) ||
   !Q_stricmp( arg, "ut2k3" ) ||
   !Q_stricmp( arg, "dn3d" ) ||
   !Q_stricmp( arg, "dnf" ) ||
   !Q_stricmp( arg, "hl" ) ) {
  Sys_Printf( "April fools, silly rabbit!\n" );
  exit( 0 );
 }


 i = 0;
 while ( games[ i ].arg != ((void*)0) )
 {
  if ( Q_stricmp( arg, games[ i ].arg ) == 0 ) {
   return &games[ i ];
  }
  i++;
 }


 return ((void*)0);
}
