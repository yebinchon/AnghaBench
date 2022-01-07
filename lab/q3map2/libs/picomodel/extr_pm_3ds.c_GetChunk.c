
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int len; int id; } ;
struct TYPE_5__ {size_t cofs; size_t maxofs; int * bufptr; } ;
typedef TYPE_1__ T3dsLoaderPers ;
typedef TYPE_2__ T3dsChunk ;


 int _pico_little_long (int ) ;
 int _pico_little_short (int ) ;

__attribute__((used)) static T3dsChunk *GetChunk( T3dsLoaderPers *pers ){
 T3dsChunk *chunk;


 if ( pers->cofs > pers->maxofs ) {
  return 0;
 }





 chunk = (T3dsChunk *)&pers->bufptr[ pers->cofs ];
 if ( !chunk ) {
  return ((void*)0);
 }

 chunk->id = _pico_little_short( chunk->id );
 chunk->len = _pico_little_long( chunk->len );


 pers->cofs += sizeof( T3dsChunk );


 return chunk;
}
