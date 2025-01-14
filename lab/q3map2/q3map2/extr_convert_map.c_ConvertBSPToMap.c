
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int entity_t ;
typedef int bspModel_t ;
typedef int FILE ;


 int ConvertEPairs (int *,int *) ;
 int ConvertModel (int *,int *,int,int ) ;
 int Error (char*,char*) ;
 int ExtractFileBase (char*,char*) ;
 int GetVectorForKey (int *,char*,int ) ;
 int StripExtension (char*) ;
 int Sys_Printf (char*,...) ;
 char* ValueForKey (int *,char*) ;
 int VectorClear (int ) ;
 int atoi (char const*) ;
 int * bspModels ;
 int * entities ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int numEntities ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

int ConvertBSPToMap( char *bspName ){
 int i, modelNum;
 FILE *f;
 bspModel_t *model;
 entity_t *e;
 vec3_t origin;
 const char *value;
 char name[ 1024 ], base[ 1024 ];



 Sys_Printf( "--- Convert BSP to MAP ---\n" );


 strcpy( name, bspName );
 StripExtension( name );
 strcat( name, "_converted.map" );
 Sys_Printf( "writing %s\n", name );

 ExtractFileBase( bspName, base );
 strcat( base, ".bsp" );


 f = fopen( name, "wb" );
 if ( f == ((void*)0) ) {
  Error( "Open failed on %s\n", name );
 }


 fprintf( f, "// Generated by Q3Map2 (ydnar) -convert -format map\n" );


 for ( i = 0; i < numEntities; i++ )
 {

  e = &entities[ i ];


  fprintf( f, "// entity %d\n", i );
  fprintf( f, "{\n" );


  ConvertEPairs( f, e );
  fprintf( f, "\n" );


  if ( i == 0 ) {
   modelNum = 0;
  }
  else
  {
   value = ValueForKey( e, "model" );
   if ( value[ 0 ] == '*' ) {
    modelNum = atoi( value + 1 );
   }
   else{
    modelNum = -1;
   }
  }


  if ( modelNum >= 0 ) {

   model = &bspModels[ modelNum ];


   value = ValueForKey( e, "origin" );
   if ( value[ 0 ] == '\0' ) {
    VectorClear( origin );
   }
   else{
    GetVectorForKey( e, "origin", origin );
   }


   ConvertModel( f, model, modelNum, origin );
  }


  fprintf( f, "}\n\n" );
 }


 fclose( f );


 return 0;
}
