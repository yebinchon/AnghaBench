
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {float* currentAngles; int currentOrigin; int bmodel; } ;
struct TYPE_6__ {TYPE_1__ r; } ;
typedef TYPE_2__ sharedEntity_t ;
typedef int clipHandle_t ;


 int CM_PointContents (int const,int ) ;
 int CM_TransformedPointContents (int const,int ,int ,float*) ;
 int MAX_GENTITIES ;
 int SV_AreaEntities (int const,int const,int*,int) ;
 int SV_ClipHandleForEntity (TYPE_2__*) ;
 TYPE_2__* SV_GentityNum (int) ;
 float* vec3_origin ;

int SV_PointContents( const vec3_t p, int passEntityNum ) {
 int touch[MAX_GENTITIES];
 sharedEntity_t *hit;
 int i, num;
 int contents, c2;
 clipHandle_t clipHandle;
 float *angles;


 contents = CM_PointContents( p, 0 );


 num = SV_AreaEntities( p, p, touch, MAX_GENTITIES );

 for ( i=0 ; i<num ; i++ ) {
  if ( touch[i] == passEntityNum ) {
   continue;
  }
  hit = SV_GentityNum( touch[i] );

  clipHandle = SV_ClipHandleForEntity( hit );
  angles = hit->r.currentAngles;
  if ( !hit->r.bmodel ) {
   angles = vec3_origin;
  }

  c2 = CM_TransformedPointContents (p, clipHandle, hit->r.currentOrigin, angles);

  contents |= c2;
 }

 return contents;
}
