
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_11__ {int nlayers; int nsurfs; int surf; int taglist; TYPE_2__* layer; } ;
typedef TYPE_1__ lwObject ;
typedef int lwNode ;
struct TYPE_13__ {int offset; } ;
struct TYPE_12__ {int polygon; TYPE_3__ point; int bbox; } ;
typedef TYPE_2__ lwLayer ;


 unsigned int ID_FORM ;
 unsigned int ID_LWOB ;




 int PICO_SEEK_CUR ;
 void* _pico_calloc (int,int) ;
 int _pico_memstream_seek (int *,unsigned int,int ) ;
 int _pico_memstream_tell (int *) ;
 unsigned int getU4 (int *) ;
 int get_flen () ;
 int lwFreeObject (TYPE_1__*) ;
 int lwGetBoundingBox (TYPE_3__*,int ) ;
 int lwGetPointPolygons (TYPE_3__*,int *) ;
 int lwGetPoints (int *,unsigned int,TYPE_3__*) ;
 int lwGetPolyNormals (TYPE_3__*,int *) ;
 int lwGetPolygons5 (int *,unsigned int,int *,int ) ;
 scalar_t__ lwGetSurface5 (int *,unsigned int,TYPE_1__*) ;
 int lwGetTags (int *,unsigned int,int *) ;
 int lwGetVertNormals (TYPE_3__*,int *) ;
 int lwListAdd (void**,int *) ;
 int lwResolvePolySurfaces (int *,int *,int *,int *) ;
 int set_flen (int ) ;

lwObject *lwGetObject5( char *filename, picoMemStream_t *fp, unsigned int *failID, int *failpos ){
 lwObject *object;
 lwLayer *layer;
 lwNode *node;
 unsigned int id, formsize, type, cksize;




 if ( !fp ) {
  return ((void*)0);
 }



 set_flen( 0 );
 id = getU4( fp );
 formsize = getU4( fp );
 type = getU4( fp );
 if ( 12 != get_flen() ) {
  return ((void*)0);
 }



 if ( id != ID_FORM || type != ID_LWOB ) {
  if ( failpos ) {
   *failpos = 12;
  }
  return ((void*)0);
 }



 object = _pico_calloc( 1, sizeof( lwObject ) );
 if ( !object ) {
  goto Fail;
 }

 layer = _pico_calloc( 1, sizeof( lwLayer ) );
 if ( !layer ) {
  goto Fail;
 }
 object->layer = layer;
 object->nlayers = 1;



 id = getU4( fp );
 cksize = getU4( fp );
 if ( 0 > get_flen() ) {
  goto Fail;
 }



 while ( 1 ) {
  cksize += cksize & 1;

  switch ( id )
  {
  case 131:
   if ( !lwGetPoints( fp, cksize, &layer->point ) ) {
    goto Fail;
   }
   break;

  case 130:
   if ( !lwGetPolygons5( fp, cksize, &layer->polygon,
          layer->point.offset ) ) {
    goto Fail;
   }
   break;

  case 129:
   if ( !lwGetTags( fp, cksize, &object->taglist ) ) {
    goto Fail;
   }
   break;

  case 128:
   node = ( lwNode * ) lwGetSurface5( fp, cksize, object );
   if ( !node ) {
    goto Fail;
   }
   lwListAdd( (void **) &object->surf, node );
   object->nsurfs++;
   break;

  default:
   _pico_memstream_seek( fp, cksize, PICO_SEEK_CUR );
   break;
  }



  if ( formsize <= _pico_memstream_tell( fp ) - 8 ) {
   break;
  }



  set_flen( 0 );
  id = getU4( fp );
  cksize = getU4( fp );
  if ( 8 != get_flen() ) {
   goto Fail;
  }
 }

 lwGetBoundingBox( &layer->point, layer->bbox );
 lwGetPolyNormals( &layer->point, &layer->polygon );
 if ( !lwGetPointPolygons( &layer->point, &layer->polygon ) ) {
  goto Fail;
 }
 if ( !lwResolvePolySurfaces( &layer->polygon, &object->taglist,
         &object->surf, &object->nsurfs ) ) {
  goto Fail;
 }
 lwGetVertNormals( &layer->point, &layer->polygon );

 return object;

Fail:
 if ( failID ) {
  *failID = id;
 }
 if ( fp ) {
  if ( failpos ) {
   *failpos = _pico_memstream_tell( fp );
  }
 }
 lwFreeObject( object );
 return ((void*)0);
}
