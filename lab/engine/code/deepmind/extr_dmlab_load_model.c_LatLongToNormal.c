
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;
typedef float byte ;


 int cosf (float) ;
 float kPi ;
 int sinf (float) ;

__attribute__((used)) static void LatLongToNormal(byte normal[2], vec3_t out) {
  float phi = normal[0] * 2.0f * kPi / 255.0f;
  float theta = normal[1] * 2.0f * kPi / 255.0f;
  out[0] = cosf(theta) * sinf(phi);
  out[1] = sinf(theta) * sinf(phi);
  out[2] = cosf(phi);
}
