
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_5__ {int data; int name; void** value; void* axis; } ;
struct TYPE_6__ {TYPE_1__ proc; } ;
struct TYPE_7__ {TYPE_2__ param; int tmap; } ;
typedef TYPE_3__ lwTexture ;






 int PICO_SEEK_CUR ;
 int _pico_memstream_seek (int *,unsigned short,int ) ;
 int _pico_memstream_tell (int *) ;
 void* getF4 (int *) ;
 int getS0 (int *) ;
 void* getU2 (int *) ;
 unsigned int getU4 (int *) ;
 int get_flen () ;
 int getbytes (int *,unsigned short) ;
 int lwGetTMap (int *,unsigned short,int *) ;
 int set_flen (int) ;

int lwGetProcedural( picoMemStream_t *fp, int rsz, lwTexture *tex ){
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
  case 129:
   if ( !lwGetTMap( fp, sz, &tex->tmap ) ) {
    return 0;
   }
   break;

  case 131:
   tex->param.proc.axis = getU2( fp );
   break;

  case 128:
   tex->param.proc.value[ 0 ] = getF4( fp );
   if ( sz >= 8 ) {
    tex->param.proc.value[ 1 ] = getF4( fp );
   }
   if ( sz >= 12 ) {
    tex->param.proc.value[ 2 ] = getF4( fp );
   }
   break;

  case 130:
   tex->param.proc.name = getS0( fp );
   rlen = get_flen();
   tex->param.proc.data = getbytes( fp, sz - rlen );
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
