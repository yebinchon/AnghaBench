
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float bezier( float x0, float x1, float x2, float x3, float t ){
 float a, b, c, t2, t3;

 t2 = t * t;
 t3 = t2 * t;

 c = 3.0f * ( x1 - x0 );
 b = 3.0f * ( x2 - x1 ) - c;
 a = x3 - x0 - c - b;

 return a * t3 + b * t2 + c * t + x0;
}
