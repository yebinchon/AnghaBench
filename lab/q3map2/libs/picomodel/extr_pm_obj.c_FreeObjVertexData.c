
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TObjVertexData ;


 int free (int *) ;

__attribute__((used)) static void FreeObjVertexData( TObjVertexData *vertexData ){
 if ( vertexData != ((void*)0) ) {
  free( (TObjVertexData *)vertexData );
 }
}
