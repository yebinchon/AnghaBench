
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_4__ {int offset; int count; TYPE_2__* pt; } ;
typedef TYPE_1__ lwPointList ;
typedef int lwPoint ;
struct TYPE_5__ {float* pos; } ;


 int _pico_free (float*) ;
 int _pico_realloc (void*,int,int) ;
 scalar_t__ getbytes (int *,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int revbytes (float*,int,int) ;

int lwGetPoints( picoMemStream_t *fp, int cksize, lwPointList *point ){
 float *f;
 int np, i, j;

 if ( cksize == 1 ) {
  return 1;
 }



 np = cksize / 12;
 point->offset = point->count;
 point->count += np;
 if ( !_pico_realloc( (void *) &point->pt, ( point->count - np ) * sizeof( lwPoint ), point->count * sizeof( lwPoint ) ) ) {
  return 0;
 }
 memset( &point->pt[ point->offset ], 0, np * sizeof( lwPoint ) );



 f = ( float * ) getbytes( fp, cksize );
 if ( !f ) {
  return 0;
 }
 revbytes( f, 4, np * 3 );



 for ( i = 0, j = 0; i < np; i++, j += 3 ) {
  point->pt[ i ].pos[ 0 ] = f[ j ];
  point->pt[ i ].pos[ 1 ] = f[ j + 1 ];
  point->pt[ i ].pos[ 2 ] = f[ j + 2 ];
 }

 _pico_free( f );
 return 1;
}
