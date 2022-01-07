
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TObjVertexData ;


 int SIZE_OBJ_STEP ;
 scalar_t__ _pico_alloc (int) ;
 scalar_t__ _pico_realloc (void*,int,int) ;
 int printf (char*,int) ;

__attribute__((used)) static TObjVertexData *SizeObjVertexData(
 TObjVertexData *vertexData, int reqEntries,
 int *entries, int *allocated ){
 int newAllocated;


 if ( reqEntries < 1 ) {
  return ((void*)0);
 }
 if ( entries == ((void*)0) || allocated == ((void*)0) ) {
  return ((void*)0);

 }

 if ( vertexData && ( reqEntries < *allocated ) ) {
  *entries = reqEntries;
  return vertexData;
 }

 if ( vertexData == ((void*)0) ) {

  newAllocated = ( reqEntries > SIZE_OBJ_STEP ) ?
        reqEntries : SIZE_OBJ_STEP;







  vertexData = (TObjVertexData *)
      _pico_alloc( sizeof( TObjVertexData ) * newAllocated );


  if ( vertexData == ((void*)0) ) {
   return ((void*)0);
  }


  *allocated = newAllocated;
  *entries = reqEntries;
  return vertexData;
 }

 if ( reqEntries == *allocated ) {
  newAllocated = ( *allocated + SIZE_OBJ_STEP );







  vertexData = (TObjVertexData *)
      _pico_realloc( (void *)&vertexData,
         sizeof( TObjVertexData ) * ( *allocated ),
         sizeof( TObjVertexData ) * ( newAllocated ) );


  if ( vertexData == ((void*)0) ) {
   return ((void*)0);
  }


  *allocated = newAllocated;
  *entries = reqEntries;
  return vertexData;
 }

 return ((void*)0);
}
