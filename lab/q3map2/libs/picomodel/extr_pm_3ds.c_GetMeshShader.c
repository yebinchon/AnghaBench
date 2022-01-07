
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int temp ;
typedef int shaderName ;
typedef int picoShader_t ;
typedef int mapName ;
struct TYPE_5__ {char* basename; scalar_t__ surface; int model; } ;
typedef TYPE_1__ T3dsLoaderPers ;


 int GetASCIIZ (TYPE_1__*,char*,int) ;
 int GetWord (TYPE_1__*) ;
 int PICO_WARNING ;
 int * PicoFindShader (int ,char*,int) ;
 char* PicoGetShaderMapName (int *) ;
 int PicoSetSurfaceShader (scalar_t__,int *) ;
 int _pico_first_token (char*) ;
 char* _pico_nopath (char*) ;
 int _pico_printf (int ,char*) ;
 int _pico_strlwr (char*) ;
 int memset (char*,int ,int) ;
 int printf (char*,char*,int) ;
 int sprintf (char*,char*,char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int GetMeshShader( T3dsLoaderPers *pers ){
 char shaderName[255] = { 0 };
 picoShader_t *shader;
 int numSharedVerts;
 int setShaderName = 0;
 int i;







 if ( !GetASCIIZ( pers,shaderName,sizeof( shaderName ) ) ) {
  return 0;
 }


 _pico_first_token( shaderName );
 shader = PicoFindShader( pers->model, shaderName, 1 );


 if ( ( shader != ((void*)0) ) && pers->surface ) {
  char mapName[1024 + 1];
  char *mapNamePtr;
  memset( mapName,0,sizeof( mapName ) );


  mapNamePtr = PicoGetShaderMapName( shader );


  if ( mapNamePtr != ((void*)0) ) {
   char temp[128];
   const char *name;


   strcpy( mapName,mapNamePtr );


   name = _pico_nopath( mapName );
   strncpy( temp, name, sizeof( temp ) );





   if ( strlen( temp ) < 1 ) {
    strcpy( temp,pers->basename );
   }


   _pico_strlwr( temp );
   sprintf( mapName,"models/mapobjects/%s/%s",pers->basename,temp );





   PicoSetSurfaceShader( pers->surface, shader );

   setShaderName = 1;
  }
 }

 if ( !setShaderName ) {
  _pico_printf( PICO_WARNING,"3DS mesh is missing shader name" );
 }






 numSharedVerts = GetWord( pers );





 for ( i = 0; i < numSharedVerts; i++ )
 {
  GetWord( pers );
 }

 return 1;
}
