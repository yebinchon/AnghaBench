
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



float __BigFloat (float l)
{
 union {byte b[4]; float f;} in, out;

 in.f = l;
 out.b[0] = in.b[3];
 out.b[1] = in.b[2];
 out.b[2] = in.b[1];
 out.b[3] = in.b[0];

 return out.f;
}
