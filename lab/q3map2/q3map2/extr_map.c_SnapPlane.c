
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;
typedef int vec3_t ;


 scalar_t__ Q_rint (scalar_t__) ;
 int SnapNormal (int ) ;
 scalar_t__ distanceEpsilon ;
 scalar_t__ fabs (scalar_t__) ;

void SnapPlane( vec3_t normal, vec_t *dist ){







 SnapNormal( normal );
 if ( fabs( *dist - Q_rint( *dist ) ) < distanceEpsilon ) {
  *dist = Q_rint( *dist );
 }
}
