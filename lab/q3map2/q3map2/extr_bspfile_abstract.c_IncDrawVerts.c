
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bspDrawVert_t ;


 int Error (char*) ;
 int MAX_MAP_DRAW_VERTS ;
 int * bspDrawVerts ;
 int free (int *) ;
 int memset (int *,int ,int) ;
 int numBSPDrawVerts ;
 int numBSPDrawVertsBuffer ;
 int * realloc (int *,int) ;
 int * safe_malloc_info (int,char*) ;

void IncDrawVerts(){
 numBSPDrawVerts++;

 if ( bspDrawVerts == 0 ) {
  numBSPDrawVertsBuffer = MAX_MAP_DRAW_VERTS / 37;

  bspDrawVerts = safe_malloc_info( sizeof( bspDrawVert_t ) * numBSPDrawVertsBuffer, "IncDrawVerts" );

 }
 else if ( numBSPDrawVerts > numBSPDrawVertsBuffer ) {
  bspDrawVert_t *newBspDrawVerts;

  numBSPDrawVertsBuffer *= 3;
  numBSPDrawVertsBuffer /= 2;

  if ( numBSPDrawVertsBuffer > MAX_MAP_DRAW_VERTS ) {
   numBSPDrawVertsBuffer = MAX_MAP_DRAW_VERTS;
  }

  newBspDrawVerts = realloc( bspDrawVerts, sizeof( bspDrawVert_t ) * numBSPDrawVertsBuffer );

  if ( !newBspDrawVerts ) {
   free (bspDrawVerts);
   Error( "realloc() failed (IncDrawVerts)" );
  }

  bspDrawVerts = newBspDrawVerts;
 }

 memset( bspDrawVerts + ( numBSPDrawVerts - 1 ), 0, sizeof( bspDrawVert_t ) );
}
