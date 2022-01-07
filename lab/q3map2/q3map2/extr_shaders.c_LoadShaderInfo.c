
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* shaderPath; } ;


 int Error (char*,int) ;
 scalar_t__ GetToken (int ) ;
 int LoadScriptFile (char*,int) ;
 int MAX_OS_PATH ;
 int MAX_SHADER_FILES ;
 int ParseCustomInfoParms () ;
 int ParseShaderFile (char*) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,int ) ;
 int free (char*) ;
 TYPE_1__* game ;
 int numShaderInfo ;
 int qtrue ;
 char* safe_malloc (int ) ;
 int sprintf (char*,char*,char*,...) ;
 int strcmp (char*,int ) ;
 int strcpy (char*,int ) ;
 int token ;
 scalar_t__ useCustomInfoParms ;
 int vfsGetFileCount (char*) ;

void LoadShaderInfo( void ){
 int i, j, numShaderFiles, count;
 char filename[ 1024 ];
 char *shaderFiles[ MAX_SHADER_FILES ];



 if ( useCustomInfoParms ) {
  ParseCustomInfoParms();
 }


 numShaderFiles = 0;


 sprintf( filename, "%s/shaderlist.txt", game->shaderPath );
 count = vfsGetFileCount( filename );


 for ( i = 0; i < count; i++ )
 {

  sprintf( filename, "%s/shaderlist.txt", game->shaderPath );
  LoadScriptFile( filename, i );


  while ( GetToken( qtrue ) )
  {

   for ( j = 0; j < numShaderFiles; j++ )
    if ( !strcmp( shaderFiles[ j ], token ) ) {
     break;
    }


   if ( j >= MAX_SHADER_FILES ) {
    Error( "MAX_SHADER_FILES (%d) reached, trim your shaderlist.txt!", (int) MAX_SHADER_FILES );
   }


   if ( j == numShaderFiles ) {
    shaderFiles[ numShaderFiles ] = safe_malloc( MAX_OS_PATH );
    strcpy( shaderFiles[ numShaderFiles ], token );
    numShaderFiles++;
   }
  }
 }


 for ( i = 0; i < numShaderFiles; i++ )
 {
  sprintf( filename, "%s/%s.shader", game->shaderPath, shaderFiles[ i ] );
  ParseShaderFile( filename );
  free( shaderFiles[ i ] );
 }


 Sys_FPrintf( SYS_VRB, "%9d shaderInfo\n", numShaderInfo );
}
