
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int picoIndex_t ;
struct TYPE_6__ {int a; int c; int b; int visible; } ;
struct TYPE_5__ {int surface; } ;
typedef TYPE_1__ T3dsLoaderPers ;
typedef TYPE_2__ T3dsIndices ;


 void* GetWord (TYPE_1__*) ;
 int PicoSetSurfaceIndex (int ,int,int ) ;
 int printf (char*,int,...) ;

__attribute__((used)) static int GetMeshFaces( T3dsLoaderPers *pers ){
 int numFaces;
 int i;


 numFaces = GetWord( pers );





 for ( i = 0; i < numFaces; i++ )
 {



  T3dsIndices face;
  face.a = GetWord( pers );
  face.c = GetWord( pers );
  face.b = GetWord( pers );
  face.visible = GetWord( pers );


  PicoSetSurfaceIndex( pers->surface, ( i * 3 + 0 ), (picoIndex_t)face.a );
  PicoSetSurfaceIndex( pers->surface, ( i * 3 + 1 ), (picoIndex_t)face.b );
  PicoSetSurfaceIndex( pers->surface, ( i * 3 + 2 ), (picoIndex_t)face.c );




 }

 return 1;
}
