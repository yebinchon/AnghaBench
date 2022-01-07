
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int PointInLeafNum_r (int ,int ) ;

int PointInLeafNum( vec3_t point ){
 return PointInLeafNum_r( point, 0 );
}
