
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EmitPlanes () ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*) ;
 int Sys_Printf (char*,char*) ;
 int UnparseEntities () ;
 int WriteBSPFile (char*) ;
 int WriteSurfaceExtraFile (char*) ;
 int numBSPEntities ;
 int numEntities ;
 char* source ;
 int sprintf (char*,char*,char*) ;

void EndBSPFile( void ){
 char path[ 1024 ];


 Sys_FPrintf( SYS_VRB, "--- EndBSPFile ---\n" );

 EmitPlanes();

 numBSPEntities = numEntities;
 UnparseEntities();


 WriteSurfaceExtraFile( source );


 sprintf( path, "%s.bsp", source );
 Sys_Printf( "Writing %s\n", path );
 WriteBSPFile( path );
}
