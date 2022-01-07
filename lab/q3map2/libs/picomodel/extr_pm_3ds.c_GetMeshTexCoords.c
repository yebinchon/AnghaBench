
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef double* picoVec2_t ;
struct TYPE_5__ {int * surface; } ;
typedef TYPE_1__ T3dsLoaderPers ;


 double GetFloat (TYPE_1__*) ;
 int GetWord (TYPE_1__*) ;
 int PicoSetSurfaceST (int *,int ,int,double*) ;
 int printf (char*,double,...) ;

__attribute__((used)) static int GetMeshTexCoords( T3dsLoaderPers *pers ){
 int numTexCoords;
 int i;


 numTexCoords = GetWord( pers );





 for ( i = 0; i < numTexCoords; i++ )
 {
  picoVec2_t uv;
  uv[0] = GetFloat( pers );
  uv[1] = -GetFloat( pers );


  if ( pers->surface == ((void*)0) ) {
   continue;
  }


  PicoSetSurfaceST( pers->surface,0,i,uv );




 }

 return 1;
}
