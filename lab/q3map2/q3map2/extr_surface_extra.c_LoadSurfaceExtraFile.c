
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lightmapAxis; int longestCurve; void* sampleSize; void* recvShadows; void* castShadows; void* entityNum; void* parentSurfaceNum; int si; } ;
typedef TYPE_1__ surfaceExtra_t ;
typedef int byte ;


 TYPE_1__* AllocSurfaceExtra () ;
 int Error (char*,char*,int ,...) ;
 int GetToken (int ) ;
 int LoadFile (char*,void**) ;
 int MAX_MAP_DRAW_SURFS ;
 int Parse1DMatrix (int,int ) ;
 int ParseFromMemory (int *,int) ;
 int Q_stricmp (int ,char*) ;
 int SYS_WRN ;
 int ShaderInfoForShader (int ) ;
 int StripExtension (char*) ;
 int Sys_FPrintf (int ,char*,char*) ;
 int Sys_Printf (char*,char*) ;
 scalar_t__ TokenAvailable () ;
 int atof (int ) ;
 void* atoi (int ) ;
 int free (int *) ;
 int numSurfaceExtras ;
 int qfalse ;
 int qtrue ;
 int scriptline ;
 TYPE_1__ seDefault ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,char const*) ;
 TYPE_1__* surfaceExtras ;
 int token ;

void LoadSurfaceExtraFile( const char *path ){
 char srfPath[ 1024 ];
 surfaceExtra_t *se;
 int surfaceNum, size;
 byte *buffer;



 if ( path == ((void*)0) || path[ 0 ] == '\0' ) {
  return;
 }


 strcpy( srfPath, path );
 StripExtension( srfPath );
 strcat( srfPath, ".srf" );
 Sys_Printf( "Loading %s\n", srfPath );
 size = LoadFile( srfPath, (void**) &buffer );
 if ( size <= 0 ) {
  Sys_FPrintf( SYS_WRN, "WARNING: Unable to find surface file %s, using defaults.\n", srfPath );
  return;
 }


 ParseFromMemory( buffer, size );


 while ( 1 )
 {

  if ( !GetToken( qtrue ) ) {
   break;
  }


  if ( !Q_stricmp( token, "default" ) ) {
   se = &seDefault;
  }


  else
  {
   surfaceNum = atoi( token );
   if ( surfaceNum < 0 || surfaceNum > MAX_MAP_DRAW_SURFS ) {
    Error( "ReadSurfaceExtraFile(): %s, line %d: bogus surface num %d", srfPath, scriptline, surfaceNum );
   }
   while ( surfaceNum >= numSurfaceExtras )
    se = AllocSurfaceExtra();
   se = &surfaceExtras[ surfaceNum ];
  }


  if ( !GetToken( qtrue ) || strcmp( token, "{" ) ) {
   Error( "ReadSurfaceExtraFile(): %s, line %d: { not found", srfPath, scriptline );
  }
  while ( 1 )
  {
   if ( !GetToken( qtrue ) ) {
    break;
   }
   if ( !strcmp( token, "}" ) ) {
    break;
   }


   if ( !Q_stricmp( token, "shader" ) ) {
    GetToken( qfalse );
    se->si = ShaderInfoForShader( token );
   }


   else if ( !Q_stricmp( token, "parent" ) ) {
    GetToken( qfalse );
    se->parentSurfaceNum = atoi( token );
   }


   else if ( !Q_stricmp( token, "entity" ) ) {
    GetToken( qfalse );
    se->entityNum = atoi( token );
   }


   else if ( !Q_stricmp( token, "castShadows" ) ) {
    GetToken( qfalse );
    se->castShadows = atoi( token );
   }


   else if ( !Q_stricmp( token, "receiveShadows" ) ) {
    GetToken( qfalse );
    se->recvShadows = atoi( token );
   }


   else if ( !Q_stricmp( token, "sampleSize" ) ) {
    GetToken( qfalse );
    se->sampleSize = atoi( token );
   }


   else if ( !Q_stricmp( token, "longestCurve" ) ) {
    GetToken( qfalse );
    se->longestCurve = atof( token );
   }


   else if ( !Q_stricmp( token, "lightmapAxis" ) ) {
    Parse1DMatrix( 3, se->lightmapAxis );
   }


   while ( TokenAvailable() )
    GetToken( qfalse );
  }
 }


 free( buffer );
}
