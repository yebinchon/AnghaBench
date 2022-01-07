
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_7__ {int offset; } ;
typedef TYPE_2__ lwTagList ;
typedef int lwSurface ;
struct TYPE_8__ {int offset; TYPE_1__* pol; } ;
typedef TYPE_3__ lwPolygonList ;
struct TYPE_6__ {int part; int smoothgrp; int * surf; } ;





 int PICO_SEEK_CUR ;
 int _pico_memstream_seek (int *,int,int ) ;
 unsigned int getU4 (int *) ;
 int getVX (int *) ;
 int get_flen () ;
 int set_flen (int ) ;

int lwGetPolygonTags( picoMemStream_t *fp, int cksize, lwTagList *tlist,
       lwPolygonList *plist ){
 unsigned int type;
 int rlen = 0, i, j;

 set_flen( 0 );
 type = getU4( fp );
 rlen = get_flen();
 if ( rlen < 0 ) {
  return 0;
 }

 if ( type != 128 && type != 130 && type != 129 ) {
  _pico_memstream_seek( fp, cksize - 4, PICO_SEEK_CUR );
  return 1;
 }

 while ( rlen < cksize ) {
  i = getVX( fp ) + plist->offset;
  j = getVX( fp ) + tlist->offset;
  rlen = get_flen();
  if ( rlen < 0 || rlen > cksize ) {
   return 0;
  }

  switch ( type ) {
  case 128: plist->pol[ i ].surf = ( lwSurface * ) ( (size_t)j ); break;
  case 130: plist->pol[ i ].part = j; break;
  case 129: plist->pol[ i ].smoothgrp = j; break;
  }
 }

 return 1;
}
