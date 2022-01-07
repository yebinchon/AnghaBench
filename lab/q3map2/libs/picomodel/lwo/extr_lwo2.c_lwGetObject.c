
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_21__ {int nlayers; int nsurfs; int surf; int taglist; TYPE_2__* layer; int nclips; int clip; int nenvs; int env; } ;
typedef TYPE_1__ lwObject ;
struct TYPE_23__ {int offset; } ;
struct TYPE_24__ {int offset; } ;
struct TYPE_22__ {struct TYPE_22__* next; int vmap; TYPE_4__ polygon; TYPE_6__ point; void** bbox; int nvmaps; void* parent; int name; void** pivot; void* flags; void* index; } ;
typedef TYPE_2__ lwNode ;
typedef TYPE_2__ lwLayer ;






 unsigned int ID_FORM ;


 unsigned int ID_LWO2 ;
 unsigned int ID_LWOB ;
 int PICO_SEEK_CUR ;
 void* _pico_calloc (int,int) ;
 int _pico_memstream_seek (int *,unsigned int,int ) ;
 int _pico_memstream_tell (int *) ;
 void* getF4 (int *) ;
 int getS0 (int *) ;
 void* getU2 (int *) ;
 unsigned int getU4 (int *) ;
 int get_flen () ;
 int lwFreeObject (TYPE_1__*) ;
 int lwGetBoundingBox (TYPE_6__*,void**) ;
 scalar_t__ lwGetClip (int *,unsigned int) ;
 scalar_t__ lwGetEnvelope (int *,unsigned int) ;
 TYPE_1__* lwGetObject5 (char*,int *,unsigned int*,int*) ;
 int lwGetPointPolygons (TYPE_6__*,TYPE_4__*) ;
 int lwGetPointVMaps (TYPE_6__*,int ) ;
 int lwGetPoints (int *,unsigned int,TYPE_6__*) ;
 int lwGetPolyNormals (TYPE_6__*,TYPE_4__*) ;
 int lwGetPolyVMaps (TYPE_4__*,int ) ;
 int lwGetPolygonTags (int *,unsigned int,int *,TYPE_4__*) ;
 int lwGetPolygons (int *,unsigned int,TYPE_4__*,int ) ;
 scalar_t__ lwGetSurface (int *,unsigned int) ;
 int lwGetTags (int *,unsigned int,int *) ;
 scalar_t__ lwGetVMap (int *,unsigned int,int ,int ,int) ;
 int lwGetVertNormals (TYPE_6__*,TYPE_4__*) ;
 int lwListAdd (void**,TYPE_2__*) ;
 int lwResolvePolySurfaces (TYPE_4__*,int *,int *,int *) ;
 int set_flen (int ) ;

lwObject *lwGetObject( char *filename, picoMemStream_t *fp, unsigned int *failID, int *failpos ){
 lwObject *object;
 lwLayer *layer;
 lwNode *node;
 unsigned int id, formsize, type, cksize;
 int i, rlen;



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



 if ( id != ID_FORM ) {
  if ( failpos ) {
   *failpos = 12;
  }
  return ((void*)0);
 }

 if ( type != ID_LWO2 ) {
  if ( type == ID_LWOB ) {
   return lwGetObject5( filename, fp, failID, failpos );
  }
  else {
   if ( failpos ) {
    *failpos = 12;
   }
   return ((void*)0);
  }
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



 id = getU4( fp );
 cksize = getU4( fp );
 if ( 0 > get_flen() ) {
  goto Fail;
 }



 while ( 1 ) {
  cksize += cksize & 1;

  switch ( id )
  {
  case 136:
   if ( object->nlayers > 0 ) {
    layer = _pico_calloc( 1, sizeof( lwLayer ) );
    if ( !layer ) {
     goto Fail;
    }
    lwListAdd( (void **) &object->layer, layer );
   }
   object->nlayers++;

   set_flen( 0 );
   layer->index = getU2( fp );
   layer->flags = getU2( fp );
   layer->pivot[ 0 ] = getF4( fp );
   layer->pivot[ 1 ] = getF4( fp );
   layer->pivot[ 2 ] = getF4( fp );
   layer->name = getS0( fp );

   rlen = get_flen();
   if ( rlen < 0 || rlen > cksize ) {
    goto Fail;
   }
   if ( rlen <= cksize - 2 ) {
    layer->parent = getU2( fp );
   }
   rlen = get_flen();
   if ( rlen < cksize ) {
    _pico_memstream_seek( fp, cksize - rlen, PICO_SEEK_CUR );
   }
   break;

  case 135:
   if ( !lwGetPoints( fp, cksize, &layer->point ) ) {
    goto Fail;
   }
   break;

  case 134:
   if ( !lwGetPolygons( fp, cksize, &layer->polygon,
         layer->point.offset ) ) {
    goto Fail;
   }
   break;

  case 128:
  case 129:
   node = ( lwNode * ) lwGetVMap( fp, cksize, layer->point.offset,
             layer->polygon.offset, id == 129 );
   if ( !node ) {
    goto Fail;
   }
   lwListAdd( (void **) &layer->vmap, node );
   layer->nvmaps++;
   break;

  case 133:
   if ( !lwGetPolygonTags( fp, cksize, &object->taglist,
         &layer->polygon ) ) {
    goto Fail;
   }
   break;

  case 141:
   set_flen( 0 );
   for ( i = 0; i < 6; i++ )
    layer->bbox[ i ] = getF4( fp );
   rlen = get_flen();
   if ( rlen < 0 || rlen > cksize ) {
    goto Fail;
   }
   if ( rlen < cksize ) {
    _pico_memstream_seek( fp, cksize - rlen, PICO_SEEK_CUR );
   }
   break;

  case 131:
   if ( !lwGetTags( fp, cksize, &object->taglist ) ) {
    goto Fail;
   }
   break;

  case 138:
   node = ( lwNode * ) lwGetEnvelope( fp, cksize );
   if ( !node ) {
    goto Fail;
   }
   lwListAdd( (void **) &object->env, node );
   object->nenvs++;
   break;

  case 140:
   node = ( lwNode * ) lwGetClip( fp, cksize );
   if ( !node ) {
    goto Fail;
   }
   lwListAdd( (void **) &object->clip, node );
   object->nclips++;
   break;

  case 132:
   node = ( lwNode * ) lwGetSurface( fp, cksize );
   if ( !node ) {
    goto Fail;
   }
   lwListAdd( (void **) &object->surf, node );
   object->nsurfs++;
   break;

  case 139:
  case 130:
  case 137:
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

 if ( object->nlayers == 0 ) {
  object->nlayers = 1;
 }

 layer = object->layer;
 while ( layer ) {
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
  if ( !lwGetPointVMaps( &layer->point, layer->vmap ) ) {
   goto Fail;
  }
  if ( !lwGetPolyVMaps( &layer->polygon, layer->vmap ) ) {
   goto Fail;
  }
  layer = layer->next;
 }

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
