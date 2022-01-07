
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef double* picoVec3_t ;
struct TYPE_5__ {int surface; } ;
typedef TYPE_1__ T3dsLoaderPers ;


 double GetFloat (TYPE_1__*) ;
 int GetWord (TYPE_1__*) ;
 int PicoSetSurfaceColor (int ,int ,int,int ) ;
 int PicoSetSurfaceXYZ (int ,int,double*) ;
 int printf (char*,double,...) ;
 int white ;

__attribute__((used)) static int GetMeshVertices( T3dsLoaderPers *pers ){
 int numVerts;
 int i;


 numVerts = GetWord( pers );





 for ( i = 0; i < numVerts; i++ )
 {
  picoVec3_t v;
  v[0] = GetFloat( pers );
  v[1] = GetFloat( pers );
  v[2] = GetFloat( pers );


  PicoSetSurfaceXYZ( pers->surface,i,v );
  PicoSetSurfaceColor( pers->surface,0,i,white );




 }

 return 1;
}
