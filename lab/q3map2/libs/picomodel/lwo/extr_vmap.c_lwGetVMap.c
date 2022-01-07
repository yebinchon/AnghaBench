
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int picoMemStream_t ;
struct TYPE_4__ {int perpoly; int dim; int nverts; float** val; void** pindex; void** vindex; int name; int type; } ;
typedef TYPE_1__ lwVMap ;


 float* _pico_alloc (int) ;
 void* _pico_calloc (int,int) ;
 int _pico_free (unsigned char*) ;
 int get_flen () ;
 unsigned char* getbytes (int *,int) ;
 int lwFreeVMap (TYPE_1__*) ;
 int set_flen (int ) ;
 float sgetF4 (unsigned char**) ;
 int sgetS0 (unsigned char**) ;
 int sgetU2 (unsigned char**) ;
 int sgetU4 (unsigned char**) ;
 void* sgetVX (unsigned char**) ;

lwVMap *lwGetVMap( picoMemStream_t *fp, int cksize, int ptoffset, int poloffset,
       int perpoly ){
 unsigned char *buf, *bp;
 lwVMap *vmap;
 float *f;
 int i, j, npts, rlen;




 set_flen( 0 );
 buf = getbytes( fp, cksize );
 if ( !buf ) {
  return ((void*)0);
 }

 vmap = _pico_calloc( 1, sizeof( lwVMap ) );
 if ( !vmap ) {
  _pico_free( buf );
  return ((void*)0);
 }



 vmap->perpoly = perpoly;

 bp = buf;
 set_flen( 0 );
 vmap->type = sgetU4( &bp );
 vmap->dim = sgetU2( &bp );
 vmap->name = sgetS0( &bp );
 rlen = get_flen();



 npts = 0;
 while ( bp < buf + cksize ) {
  i = sgetVX( &bp );
  if ( perpoly ) {
   i = sgetVX( &bp );
  }
  bp += vmap->dim * sizeof( float );
  ++npts;
 }



 vmap->nverts = npts;
 vmap->vindex = _pico_calloc( npts, sizeof( int ) );
 if ( !vmap->vindex ) {
  goto Fail;
 }
 if ( perpoly ) {
  vmap->pindex = _pico_calloc( npts, sizeof( int ) );
  if ( !vmap->pindex ) {
   goto Fail;
  }
 }

 if ( vmap->dim > 0 ) {
  vmap->val = _pico_calloc( npts, sizeof( float * ) );
  if ( !vmap->val ) {
   goto Fail;
  }
  f = _pico_alloc( npts * vmap->dim * sizeof( float ) );
  if ( !f ) {
   goto Fail;
  }
  for ( i = 0; i < npts; i++ )
   vmap->val[ i ] = f + i * vmap->dim;
 }



 bp = buf + rlen;
 for ( i = 0; i < npts; i++ ) {
  vmap->vindex[ i ] = sgetVX( &bp );
  if ( perpoly ) {
   vmap->pindex[ i ] = sgetVX( &bp );
  }
  for ( j = 0; j < vmap->dim; j++ )
   vmap->val[ i ][ j ] = sgetF4( &bp );
 }

 _pico_free( buf );
 return vmap;

Fail:
 if ( buf ) {
  _pico_free( buf );
 }
 lwFreeVMap( vmap );
 return ((void*)0);
}
