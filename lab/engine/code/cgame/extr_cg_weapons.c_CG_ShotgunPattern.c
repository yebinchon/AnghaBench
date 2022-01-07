
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int CG_ShotgunPellet (int ,int ,int) ;
 int CrossProduct (int ,int ,int ) ;
 int DEFAULT_SHOTGUN_COUNT ;
 int DEFAULT_SHOTGUN_SPREAD ;
 int PerpendicularVector (int ,int ) ;
 int Q_crandom (int*) ;
 int VectorMA (int ,float,int ,int ) ;
 int VectorNormalize2 (int ,int ) ;

__attribute__((used)) static void CG_ShotgunPattern( vec3_t origin, vec3_t origin2, int seed, int otherEntNum ) {
 int i;
 float r, u;
 vec3_t end;
 vec3_t forward, right, up;



 VectorNormalize2( origin2, forward );
 PerpendicularVector( right, forward );
 CrossProduct( forward, right, up );


 for ( i = 0 ; i < DEFAULT_SHOTGUN_COUNT ; i++ ) {
  r = Q_crandom( &seed ) * DEFAULT_SHOTGUN_SPREAD * 16;
  u = Q_crandom( &seed ) * DEFAULT_SHOTGUN_SPREAD * 16;
  VectorMA( origin, 8192 * 16, forward, end);
  VectorMA (end, r, right, end);
  VectorMA (end, u, up, end);

  CG_ShotgunPellet( origin, end, otherEntNum );
 }
}
