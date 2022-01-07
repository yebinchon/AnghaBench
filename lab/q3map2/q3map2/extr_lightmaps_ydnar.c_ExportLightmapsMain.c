
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DefaultExtension (int ,char*) ;
 int ExpandArg (char*) ;
 int ExportLightmaps () ;
 int LoadBSPFile (int ) ;
 int StripExtension (int ) ;
 int Sys_Printf (char*,...) ;
 int source ;
 int strcpy (int ,int ) ;

int ExportLightmapsMain( int argc, char **argv ){

 if ( argc < 1 ) {
  Sys_Printf( "Usage: q3map -export [-v] <mapname>\n" );
  return 0;
 }


 strcpy( source, ExpandArg( argv[ argc - 1 ] ) );
 StripExtension( source );
 DefaultExtension( source, ".bsp" );


 Sys_Printf( "Loading %s\n", source );
 LoadBSPFile( source );


 ExportLightmaps();


 return 0;
}
