
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_7__ {int offset; int voffset; TYPE_2__* pol; } ;
typedef TYPE_1__ lwPolygonList ;
struct TYPE_8__ {int nverts; int flags; unsigned int type; TYPE_3__* v; } ;
typedef TYPE_2__ lwPolygon ;
struct TYPE_9__ {int index; } ;
typedef TYPE_3__ lwPolVert ;


 int _pico_free (unsigned char*) ;
 unsigned int getU4 (int *) ;
 int get_flen () ;
 unsigned char* getbytes (int *,int) ;
 int lwAllocPolygons (TYPE_1__*,int,int) ;
 int lwFreePolygons (TYPE_1__*) ;
 int set_flen (int ) ;
 int sgetU2 (unsigned char**) ;
 int sgetVX (unsigned char**) ;

int lwGetPolygons( picoMemStream_t *fp, int cksize, lwPolygonList *plist, int ptoffset ){
 lwPolygon *pp;
 lwPolVert *pv;
 unsigned char *buf, *bp;
 int i, j, flags, nv, nverts, npols;
 unsigned int type;


 if ( cksize == 0 ) {
  return 1;
 }



 set_flen( 0 );
 type = getU4( fp );
 buf = getbytes( fp, cksize - 4 );
 if ( cksize != get_flen() ) {
  goto Fail;
 }



 nverts = 0;
 npols = 0;
 bp = buf;

 while ( bp < buf + cksize - 4 ) {
  nv = sgetU2( &bp );
  nv &= 0x03FF;
  nverts += nv;
  npols++;
  for ( i = 0; i < nv; i++ )
   j = sgetVX( &bp );
 }

 if ( !lwAllocPolygons( plist, npols, nverts ) ) {
  goto Fail;
 }



 bp = buf;
 pp = plist->pol + plist->offset;
 pv = plist->pol[ 0 ].v + plist->voffset;

 for ( i = 0; i < npols; i++ ) {
  nv = sgetU2( &bp );
  flags = nv & 0xFC00;
  nv &= 0x03FF;

  pp->nverts = nv;
  pp->flags = flags;
  pp->type = type;
  if ( !pp->v ) {
   pp->v = pv;
  }
  for ( j = 0; j < nv; j++ )
   pp->v[ j ].index = sgetVX( &bp ) + ptoffset;

  pp++;
  pv += nv;
 }

 _pico_free( buf );
 return 1;

Fail:
 if ( buf ) {
  _pico_free( buf );
 }
 lwFreePolygons( plist );
 return 0;
}
