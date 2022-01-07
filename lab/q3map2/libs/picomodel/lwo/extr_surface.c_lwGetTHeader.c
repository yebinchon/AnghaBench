
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_4__ {int eindex; int val; } ;
struct TYPE_5__ {void* axis; void* negative; void* enabled; TYPE_1__ opacity; void* opac_type; void* chan; int ord; } ;
typedef TYPE_2__ lwTexture ;







 int PICO_SEEK_CUR ;
 int _pico_memstream_seek (int *,unsigned short,int ) ;
 int _pico_memstream_tell (int *) ;
 int getF4 (int *) ;
 int getS0 (int *) ;
 void* getU2 (int *) ;
 void* getU4 (int *) ;
 int getVX (int *) ;
 int get_flen () ;
 int set_flen (int) ;

int lwGetTHeader( picoMemStream_t *fp, int hsz, lwTexture *tex ){
 unsigned int id;
 unsigned short sz;
 int pos, rlen;




 set_flen( 0 );
 pos = _pico_memstream_tell( fp );



 tex->ord = getS0( fp );



 id = getU4( fp );
 sz = getU2( fp );
 if ( 0 > get_flen() ) {
  return 0;
 }



 while ( 1 ) {
  sz += sz & 1;
  set_flen( 0 );

  switch ( id ) {
  case 131:
   tex->chan = getU4( fp );
   break;

  case 128:
   tex->opac_type = getU2( fp );
   tex->opacity.val = getF4( fp );
   tex->opacity.eindex = getVX( fp );
   break;

  case 130:
   tex->enabled = getU2( fp );
   break;

  case 129:
   tex->negative = getU2( fp );
   break;

  case 132:
   tex->axis = getU2( fp );
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



  if ( hsz <= _pico_memstream_tell( fp ) - pos ) {
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
