
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_3__ {int offset; int count; int * tag; } ;
typedef TYPE_1__ lwTagList ;


 int _pico_free (char*) ;
 int _pico_realloc (void*,int,int) ;
 char* getbytes (int *,int) ;
 int memset (int *,int ,int) ;
 int set_flen (int ) ;
 int sgetS0 (char**) ;
 int strlen (char*) ;

int lwGetTags( picoMemStream_t *fp, int cksize, lwTagList *tlist ){
 char *buf, *bp;
 int i, len, ntags;

 if ( cksize == 0 ) {
  return 1;
 }



 set_flen( 0 );
 buf = getbytes( fp, cksize );
 if ( !buf ) {
  return 0;
 }



 ntags = 0;
 bp = buf;
 while ( bp < buf + cksize ) {
  len = strlen( bp ) + 1;
  len += len & 1;
  bp += len;
  ++ntags;
 }



 tlist->offset = tlist->count;
 tlist->count += ntags;
 if ( !_pico_realloc( (void *) &tlist->tag, ( tlist->count - ntags ) * sizeof( char * ), tlist->count * sizeof( char * ) ) ) {
  goto Fail;
 }
 memset( &tlist->tag[ tlist->offset ], 0, ntags * sizeof( char * ) );



 bp = buf;
 for ( i = 0; i < ntags; i++ )
  tlist->tag[ i + tlist->offset ] = sgetS0( &bp );

 _pico_free( buf );
 return 1;

Fail:
 if ( buf ) {
  _pico_free( buf );
 }
 return 0;
}
