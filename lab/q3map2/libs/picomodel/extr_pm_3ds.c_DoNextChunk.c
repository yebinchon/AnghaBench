
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int len; int id; } ;
struct TYPE_8__ {int cofs; long maxofs; } ;
typedef TYPE_1__ T3dsLoaderPers ;
typedef TYPE_2__ T3dsChunk ;


 int CHUNK_EDITOR_DATA ;
 int CHUNK_VERSION ;
 char* DebugGetChunkName (int) ;
 int DoNextEditorDataChunk (TYPE_1__*,long) ;
 TYPE_2__* GetChunk (TYPE_1__*) ;
 int GetWord (TYPE_1__*) ;
 int PICO_WARNING ;
 int _pico_printf (int ,char*) ;
 int printf (char*,int,...) ;

__attribute__((used)) static int DoNextChunk( T3dsLoaderPers *pers, int endofs ){
 T3dsChunk *chunk;




 while ( pers->cofs < endofs )
 {
  long nextofs = pers->cofs;
  if ( ( chunk = GetChunk( pers ) ) == ((void*)0) ) {
   return 0;
  }
  if ( !chunk->len ) {
   return 0;
  }
  nextofs += chunk->len;





  if ( chunk->id == CHUNK_VERSION ) {






   int version;
   version = GetWord( pers );
   GetWord( pers );





   if ( version == 4 ) {
    _pico_printf( PICO_WARNING,
         "3DS version is 4. Model might load incorrectly." );
   }




  }

  if ( chunk->id == CHUNK_EDITOR_DATA ) {
   if ( !DoNextEditorDataChunk( pers,nextofs ) ) {
    return 0;
   }
   continue;
  }

  pers->cofs = nextofs;
  if ( pers->cofs >= pers->maxofs ) {
   break;
  }
 }
 return 1;
}
