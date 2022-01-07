
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bspDrawVert_t ;


 scalar_t__ GROW_META_VERTS ;
 int firstSearchMetaVert ;
 int free (int *) ;
 int maxMetaVerts ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int * metaVerts ;
 int numMetaVerts ;
 int * safe_malloc (int) ;

__attribute__((used)) static int FindMetaVertex( bspDrawVert_t *src ){
 int i;
 bspDrawVert_t *v, *temp;



 for ( i = firstSearchMetaVert, v = &metaVerts[ i ]; i < numMetaVerts; i++, v++ )
 {
  if ( memcmp( src, v, sizeof( bspDrawVert_t ) ) == 0 ) {
   return i;
  }
 }


 if ( numMetaVerts >= maxMetaVerts ) {

  maxMetaVerts += GROW_META_VERTS;
  temp = safe_malloc( maxMetaVerts * sizeof( bspDrawVert_t ) );
  if ( metaVerts != ((void*)0) ) {
   memcpy( temp, metaVerts, numMetaVerts * sizeof( bspDrawVert_t ) );
   free( metaVerts );
  }
  metaVerts = temp;
 }


 memcpy( &metaVerts[ numMetaVerts ], src, sizeof( bspDrawVert_t ) );
 numMetaVerts++;


 return ( numMetaVerts - 1 );
}
