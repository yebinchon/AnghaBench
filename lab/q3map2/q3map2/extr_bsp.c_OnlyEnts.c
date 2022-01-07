
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LoadBSPFile (char*) ;
 int LoadMapFile (int ,int ) ;
 int LoadShaderInfo () ;
 int SetLightStyles () ;
 int SetModelNumbers () ;
 int Sys_Printf (char*) ;
 int UnparseEntities () ;
 int WriteBSPFile (char*) ;
 int name ;
 scalar_t__ numBSPEntities ;
 scalar_t__ numEntities ;
 int qfalse ;
 char* source ;
 int sprintf (char*,char*,char*) ;

void OnlyEnts( void ){
 char out[ 1024 ];



 Sys_Printf( "--- OnlyEnts ---\n" );

 sprintf( out, "%s.bsp", source );
 LoadBSPFile( out );
 numEntities = 0;

 LoadShaderInfo();
 LoadMapFile( name, qfalse );
 SetModelNumbers();
 SetLightStyles();

 numBSPEntities = numEntities;
 UnparseEntities();

 WriteBSPFile( out );
}
