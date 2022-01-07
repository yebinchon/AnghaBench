
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_15__ {float val; } ;
struct TYPE_13__ {float* val; } ;
struct TYPE_14__ {TYPE_1__ size; } ;
struct TYPE_16__ {unsigned int type; int enabled; TYPE_3__ opacity; TYPE_2__ tmap; } ;
typedef TYPE_4__ lwTexture ;





 int PICO_SEEK_CUR ;
 TYPE_4__* _pico_calloc (int,int) ;
 int _pico_free (TYPE_4__*) ;
 int _pico_memstream_seek (int *,unsigned short,int ) ;
 unsigned short getU2 (int *) ;
 int lwFreeTexture (TYPE_4__*) ;
 int lwGetGradient (int *,unsigned short,TYPE_4__*) ;
 int lwGetImageMap (int *,unsigned short,TYPE_4__*) ;
 int lwGetProcedural (int *,unsigned short,TYPE_4__*) ;
 int lwGetTHeader (int *,unsigned short,TYPE_4__*) ;
 int set_flen (int) ;

lwTexture *lwGetTexture( picoMemStream_t *fp, int bloksz, unsigned int type ){
 lwTexture *tex;
 unsigned short sz;
 int ok;

 tex = _pico_calloc( 1, sizeof( lwTexture ) );
 if ( !tex ) {
  return ((void*)0);
 }

 tex->type = type;
 tex->tmap.size.val[ 0 ] =
  tex->tmap.size.val[ 1 ] =
   tex->tmap.size.val[ 2 ] = 1.0f;
 tex->opacity.val = 1.0f;
 tex->enabled = 1;

 sz = getU2( fp );
 if ( !lwGetTHeader( fp, sz, tex ) ) {
  _pico_free( tex );
  return ((void*)0);
 }

 sz = bloksz - sz - 6;
 switch ( type ) {
 case 129: ok = lwGetImageMap( fp, sz, tex ); break;
 case 128: ok = lwGetProcedural( fp, sz, tex ); break;
 case 130: ok = lwGetGradient( fp, sz, tex ); break;
 default:
  ok = !_pico_memstream_seek( fp, sz, PICO_SEEK_CUR );
 }

 if ( !ok ) {
  lwFreeTexture( tex );
  return ((void*)0);
 }

 set_flen( bloksz );
 return tex;
}
