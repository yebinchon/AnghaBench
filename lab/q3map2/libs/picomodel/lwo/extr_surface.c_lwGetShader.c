
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_5__ {int data; void* name; void* flags; void* ord; } ;
typedef TYPE_1__ lwPlugin ;


 unsigned int ID_ENAB ;

 int PICO_SEEK_CUR ;
 TYPE_1__* _pico_calloc (int,int) ;
 int _pico_memstream_seek (int *,unsigned short,int ) ;
 int _pico_memstream_tell (int *) ;
 void* getS0 (int *) ;
 void* getU2 (int *) ;
 unsigned int getU4 (int *) ;
 int get_flen () ;
 int getbytes (int *,unsigned short) ;
 int lwFreePlugin (TYPE_1__*) ;
 int set_flen (int) ;

lwPlugin *lwGetShader( picoMemStream_t *fp, int bloksz ){
 lwPlugin *shdr;
 unsigned int id;
 unsigned short sz;
 int hsz, rlen, pos;

 shdr = _pico_calloc( 1, sizeof( lwPlugin ) );
 if ( !shdr ) {
  return ((void*)0);
 }

 pos = _pico_memstream_tell( fp );
 set_flen( 0 );
 hsz = getU2( fp );
 shdr->ord = getS0( fp );
 id = getU4( fp );
 sz = getU2( fp );
 if ( 0 > get_flen() ) {
  goto Fail;
 }

 while ( hsz > 0 ) {
  sz += sz & 1;
  hsz -= sz;
  if ( id == ID_ENAB ) {
   shdr->flags = getU2( fp );
   break;
  }
  else {
   _pico_memstream_seek( fp, sz, PICO_SEEK_CUR );
   id = getU4( fp );
   sz = getU2( fp );
  }
 }

 id = getU4( fp );
 sz = getU2( fp );
 if ( 0 > get_flen() ) {
  goto Fail;
 }

 while ( 1 ) {
  sz += sz & 1;
  set_flen( 0 );

  switch ( id ) {
  case 128:
   shdr->name = getS0( fp );
   rlen = get_flen();
   shdr->data = getbytes( fp, sz - rlen );
   break;

  default:
   break;
  }



  rlen = get_flen();
  if ( rlen < 0 || rlen > sz ) {
   goto Fail;
  }



  if ( rlen < sz ) {
   _pico_memstream_seek( fp, sz - rlen, PICO_SEEK_CUR );
  }



  if ( bloksz <= _pico_memstream_tell( fp ) - pos ) {
   break;
  }



  set_flen( 0 );
  id = getU4( fp );
  sz = getU2( fp );
  if ( 6 != get_flen() ) {
   goto Fail;
  }
 }

 set_flen( _pico_memstream_tell( fp ) - pos );
 return shdr;

Fail:
 lwFreePlugin( shdr );
 return ((void*)0);
}
