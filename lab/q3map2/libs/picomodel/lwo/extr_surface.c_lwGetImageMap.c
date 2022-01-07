
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_12__ {void* eindex; void* val; } ;
struct TYPE_11__ {void* eindex; void* val; } ;
struct TYPE_10__ {void* eindex; void* val; } ;
struct TYPE_9__ {void* eindex; void* val; } ;
struct TYPE_13__ {TYPE_4__ amplitude; TYPE_3__ stck; void* pblend; void* aa_strength; void* aas_flags; TYPE_2__ wraph; TYPE_1__ wrapw; void* wraph_type; void* wrapw_type; void* cindex; void* axis; int vmap_name; void* projection; } ;
struct TYPE_14__ {TYPE_5__ imap; } ;
struct TYPE_15__ {TYPE_6__ param; int tmap; } ;
typedef TYPE_7__ lwTexture ;
 int PICO_SEEK_CUR ;
 int _pico_memstream_seek (int *,unsigned short,int ) ;
 int _pico_memstream_tell (int *) ;
 void* getF4 (int *) ;
 int getS0 (int *) ;
 void* getU2 (int *) ;
 unsigned int getU4 (int *) ;
 void* getVX (int *) ;
 int get_flen () ;
 int lwGetTMap (int *,unsigned short,int *) ;
 int set_flen (int) ;

int lwGetImageMap( picoMemStream_t *fp, int rsz, lwTexture *tex ){
 unsigned int id;
 unsigned short sz;
 int rlen, pos;

 pos = _pico_memstream_tell( fp );
 id = getU4( fp );
 sz = getU2( fp );
 if ( 0 > get_flen() ) {
  return 0;
 }

 while ( 1 ) {
  sz += sz & 1;
  set_flen( 0 );

  switch ( id ) {
  case 132:
   if ( !lwGetTMap( fp, sz, &tex->tmap ) ) {
    return 0;
   }
   break;

  case 135:
   tex->param.imap.projection = getU2( fp );
   break;

  case 131:
   tex->param.imap.vmap_name = getS0( fp );
   break;

  case 138:
   tex->param.imap.axis = getU2( fp );
   break;

  case 137:
   tex->param.imap.cindex = getVX( fp );
   break;

  case 130:
   tex->param.imap.wrapw_type = getU2( fp );
   tex->param.imap.wraph_type = getU2( fp );
   break;

  case 128:
   tex->param.imap.wrapw.val = getF4( fp );
   tex->param.imap.wrapw.eindex = getVX( fp );
   break;

  case 129:
   tex->param.imap.wraph.val = getF4( fp );
   tex->param.imap.wraph.eindex = getVX( fp );
   break;

  case 139:
   tex->param.imap.aas_flags = getU2( fp );
   tex->param.imap.aa_strength = getF4( fp );
   break;

  case 136:
   tex->param.imap.pblend = getU2( fp );
   break;

  case 134:
   tex->param.imap.stck.val = getF4( fp );
   tex->param.imap.stck.eindex = getVX( fp );
   break;

  case 133:
   tex->param.imap.amplitude.val = getF4( fp );
   tex->param.imap.amplitude.eindex = getVX( fp );
   break;

  default:
   break;
  }



  rlen = get_flen();
  if ( rlen < 0 || rlen > sz ) {
   return 0;
  }



  if ( rlen < sz ) {
   _pico_memstream_seek( fp, sz - rlen, PICO_SEEK_CUR );
  }



  if ( rsz <= _pico_memstream_tell( fp ) - pos ) {
   break;
  }



  set_flen( 0 );
  id = getU4( fp );
  sz = getU2( fp );
  if ( 6 != get_flen() ) {
   return 0;
  }
 }

 set_flen( _pico_memstream_tell( fp ) - pos );
 return 1;
}
