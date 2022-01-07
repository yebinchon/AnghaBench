
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int VectorCopy (int ,int ) ;

void AxisCopy( vec3_t in[3], vec3_t out[3] ) {
 VectorCopy( in[0], out[0] );
 VectorCopy( in[1], out[1] );
 VectorCopy( in[2], out[2] );
}
