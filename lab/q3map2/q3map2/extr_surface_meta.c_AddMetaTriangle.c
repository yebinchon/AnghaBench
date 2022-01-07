
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int metaTriangle_t ;


 scalar_t__ GROW_META_TRIANGLES ;
 int free (int *) ;
 int maxMetaTriangles ;
 int memcpy (int *,int *,int) ;
 int * metaTriangles ;
 int numMetaTriangles ;
 int * safe_malloc (int) ;

__attribute__((used)) static int AddMetaTriangle( void ){
 metaTriangle_t *temp;



 if ( numMetaTriangles >= maxMetaTriangles ) {

  maxMetaTriangles += GROW_META_TRIANGLES;
  temp = safe_malloc( maxMetaTriangles * sizeof( metaTriangle_t ) );
  if ( metaTriangles != ((void*)0) ) {
   memcpy( temp, metaTriangles, numMetaTriangles * sizeof( metaTriangle_t ) );
   free( metaTriangles );
  }
  metaTriangles = temp;
 }


 numMetaTriangles++;
 return numMetaTriangles - 1;
}
