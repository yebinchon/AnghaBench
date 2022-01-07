
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fogNum; int * si; } ;
typedef TYPE_1__ metaTriangle_t ;


 int ClearMetaTriangles () ;
 int CompareMetaTriangles ;
 int I_FloatTime () ;
 int MetaTrianglesToSurface (int,TYPE_1__*,int*,int*) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 TYPE_1__* metaTriangles ;
 int numMergedSurfaces ;
 int numMergedVerts ;
 int numMetaTriangles ;
 int qsort (TYPE_1__*,int,int,int ) ;

void MergeMetaTriangles( void ){
 int i, j, fOld, start, numAdded;
 metaTriangle_t *head, *end;



 if ( numMetaTriangles <= 0 ) {
  return;
 }


 Sys_FPrintf( SYS_VRB, "--- MergeMetaTriangles ---\n" );


 qsort( metaTriangles, numMetaTriangles, sizeof( metaTriangle_t ), CompareMetaTriangles );


 fOld = -1;
 start = I_FloatTime();
 numAdded = 0;


 for ( i = 0, j = 0; i < numMetaTriangles; i = j )
 {

  head = &metaTriangles[ i ];


  if ( head->si == ((void*)0) ) {
   continue;
  }


  if ( j <= i ) {
   for ( j = i + 1; j < numMetaTriangles; j++ )
   {

    end = &metaTriangles[ j ];
    if ( head->si != end->si || head->fogNum != end->fogNum ) {
     break;
    }
   }
  }


  MetaTrianglesToSurface( ( j - i ), head, &fOld, &numAdded );
 }


 ClearMetaTriangles();


 if ( i ) {
  Sys_FPrintf( SYS_VRB, " (%d)\n", (int) ( I_FloatTime() - start ) );
 }


 Sys_FPrintf( SYS_VRB, "%9d surfaces merged\n", numMergedSurfaces );
 Sys_FPrintf( SYS_VRB, "%9d vertexes merged\n", numMergedVerts );
}
