
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int NUMVERTEXNORMALS ;
 int VectorCopy (int ,int ) ;
 int * bytedirs ;
 int vec3_origin ;

void ByteToDir( int b, vec3_t dir ) {
 if ( b < 0 || b >= NUMVERTEXNORMALS ) {
  VectorCopy( vec3_origin, dir );
  return;
 }
 VectorCopy (bytedirs[b], dir);
}
