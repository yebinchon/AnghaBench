
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_10__ {void* eindex; void** val; } ;
struct TYPE_9__ {void* eindex; void** val; } ;
struct TYPE_8__ {void* eindex; void** val; } ;
struct TYPE_7__ {void* eindex; void** val; } ;
struct TYPE_11__ {void* coord_sys; int ref_object; TYPE_4__ falloff; void* fall_type; TYPE_3__ rotate; TYPE_2__ center; TYPE_1__ size; } ;
typedef TYPE_5__ lwTMap ;
 int PICO_SEEK_CUR ;
 int _pico_memstream_seek (int *,unsigned short,int ) ;
 int _pico_memstream_tell (int *) ;
 void* getF4 (int *) ;
 int getS0 (int *) ;
 void* getU2 (int *) ;
 unsigned int getU4 (int *) ;
 void* getVX (int *) ;
 int get_flen () ;
 int set_flen (int) ;

int lwGetTMap( picoMemStream_t *fp, int tmapsz, lwTMap *tmap ){
 unsigned int id;
 unsigned short sz;
 int rlen, pos, i;

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
  case 128:
   for ( i = 0; i < 3; i++ )
    tmap->size.val[ i ] = getF4( fp );
   tmap->size.eindex = getVX( fp );
   break;

  case 133:
   for ( i = 0; i < 3; i++ )
    tmap->center.val[ i ] = getF4( fp );
   tmap->center.eindex = getVX( fp );
   break;

  case 129:
   for ( i = 0; i < 3; i++ )
    tmap->rotate.val[ i ] = getF4( fp );
   tmap->rotate.eindex = getVX( fp );
   break;

  case 131:
   tmap->fall_type = getU2( fp );
   for ( i = 0; i < 3; i++ )
    tmap->falloff.val[ i ] = getF4( fp );
   tmap->falloff.eindex = getVX( fp );
   break;

  case 130:
   tmap->ref_object = getS0( fp );
   break;

  case 132:
   tmap->coord_sys = getU2( fp );
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



  if ( tmapsz <= _pico_memstream_tell( fp ) - pos ) {
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
