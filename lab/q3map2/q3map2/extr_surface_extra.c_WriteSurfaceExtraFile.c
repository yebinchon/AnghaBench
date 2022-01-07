
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int parentSurfaceNum; int entityNum; int castShadows; int recvShadows; int sampleSize; double longestCurve; double* lightmapAxis; TYPE_2__* si; TYPE_1__* mds; } ;
typedef TYPE_3__ surfaceExtra_t ;
struct TYPE_7__ {char* shader; } ;
struct TYPE_6__ {size_t type; int numVerts; int numIndexes; scalar_t__ planar; } ;
typedef int FILE ;


 int Error (char*,char*) ;
 TYPE_3__* GetSurfaceExtra (int) ;
 int StripExtension (char*) ;
 int Sys_Printf (char*,...) ;
 scalar_t__ VectorCompare (double*,double*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int numSurfaceExtras ;
 scalar_t__ qfalse ;
 TYPE_3__ seDefault ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 char** surfaceTypes ;

void WriteSurfaceExtraFile( const char *path ){
 char srfPath[ 1024 ];
 FILE *sf;
 surfaceExtra_t *se;
 int i;



 if ( path == ((void*)0) || path[ 0 ] == '\0' ) {
  return;
 }


 Sys_Printf( "--- WriteSurfaceExtraFile ---\n" );


 strcpy( srfPath, path );
 StripExtension( srfPath );
 strcat( srfPath, ".srf" );
 Sys_Printf( "Writing %s\n", srfPath );
 sf = fopen( srfPath, "w" );
 if ( sf == ((void*)0) ) {
  Error( "Error opening %s for writing", srfPath );
 }


 for ( i = -1; i < numSurfaceExtras; i++ )
 {

  se = GetSurfaceExtra( i );


  if ( i < 0 ) {
   fprintf( sf, "default" );
  }
  else{
   fprintf( sf, "%d", i );
  }


  if ( se->mds == ((void*)0) ) {
   fprintf( sf, "\n" );
  }
  else
  {
   fprintf( sf, " // %s V: %d I: %d %s\n",
      surfaceTypes[ se->mds->type ],
      se->mds->numVerts,
      se->mds->numIndexes,
      ( se->mds->planar ? "planar" : "" ) );
  }


  fprintf( sf, "{\n" );


  if ( se->si != ((void*)0) ) {
   fprintf( sf, "\tshader %s\n", se->si->shader );
  }


  if ( se->parentSurfaceNum != seDefault.parentSurfaceNum ) {
   fprintf( sf, "\tparent %d\n", se->parentSurfaceNum );
  }


  if ( se->entityNum != seDefault.entityNum ) {
   fprintf( sf, "\tentity %d\n", se->entityNum );
  }


  if ( se->castShadows != seDefault.castShadows || se == &seDefault ) {
   fprintf( sf, "\tcastShadows %d\n", se->castShadows );
  }


  if ( se->recvShadows != seDefault.recvShadows || se == &seDefault ) {
   fprintf( sf, "\treceiveShadows %d\n", se->recvShadows );
  }


  if ( se->sampleSize != seDefault.sampleSize || se == &seDefault ) {
   fprintf( sf, "\tsampleSize %d\n", se->sampleSize );
  }


  if ( se->longestCurve != seDefault.longestCurve || se == &seDefault ) {
   fprintf( sf, "\tlongestCurve %f\n", se->longestCurve );
  }


  if ( VectorCompare( se->lightmapAxis, seDefault.lightmapAxis ) == qfalse ) {
   fprintf( sf, "\tlightmapAxis ( %f %f %f )\n", se->lightmapAxis[ 0 ], se->lightmapAxis[ 1 ], se->lightmapAxis[ 2 ] );
  }


  fprintf( sf, "}\n\n" );
 }


 fclose( sf );
}
