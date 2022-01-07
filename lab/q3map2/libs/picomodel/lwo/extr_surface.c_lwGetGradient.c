
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_7__ {void** ikey; TYPE_1__* key; void* repeat; void* end; void* start; void* itemname; void* paramname; } ;
struct TYPE_8__ {TYPE_2__ grad; } ;
struct TYPE_9__ {TYPE_3__ param; int tmap; } ;
typedef TYPE_4__ lwTexture ;
typedef int lwGradKey ;
struct TYPE_6__ {void** rgba; void* value; } ;
 int PICO_SEEK_CUR ;
 void* _pico_calloc (int,int) ;
 int _pico_memstream_seek (int *,unsigned short,int ) ;
 int _pico_memstream_tell (int *) ;
 void* getF4 (int *) ;
 void* getS0 (int *) ;
 void* getU2 (int *) ;
 unsigned int getU4 (int *) ;
 int get_flen () ;
 int lwGetTMap (int *,unsigned short,int *) ;
 int set_flen (int) ;

int lwGetGradient( picoMemStream_t *fp, int rsz, lwTexture *tex ){
 unsigned int id;
 unsigned short sz;
 int rlen, pos, i, j, nkeys;

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
   if ( !lwGetTMap( fp, sz, &tex->tmap ) ) {
    return 0;
   }
   break;

  case 129:
   tex->param.grad.paramname = getS0( fp );
   break;

  case 130:
   tex->param.grad.itemname = getS0( fp );
   break;

  case 132:
   tex->param.grad.start = getF4( fp );
   break;

  case 134:
   tex->param.grad.end = getF4( fp );
   break;

  case 133:
   tex->param.grad.repeat = getU2( fp );
   break;

  case 135:
   nkeys = sz / sizeof( lwGradKey );
   tex->param.grad.key = _pico_calloc( nkeys, sizeof( lwGradKey ) );
   if ( !tex->param.grad.key ) {
    return 0;
   }
   for ( i = 0; i < nkeys; i++ ) {
    tex->param.grad.key[ i ].value = getF4( fp );
    for ( j = 0; j < 4; j++ )
     tex->param.grad.key[ i ].rgba[ j ] = getF4( fp );
   }
   break;

  case 131:
   nkeys = sz / 2;
   tex->param.grad.ikey = _pico_calloc( nkeys, sizeof( short ) );
   if ( !tex->param.grad.ikey ) {
    return 0;
   }
   for ( i = 0; i < nkeys; i++ )
    tex->param.grad.ikey[ i ] = getU2( fp );
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
