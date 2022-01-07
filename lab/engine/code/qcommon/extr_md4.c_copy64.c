
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ byte ;



__attribute__((used)) static void copy64(uint32_t *M, byte *in)
{
 int i;

 for (i=0;i<16;i++)
  M[i] =
   ((uint32_t)in[i*4+3] << 24) |
   ((uint32_t)in[i*4+2] << 16) |
   ((uint32_t)in[i*4+1] << 8) |
   ((uint32_t)in[i*4+0] << 0) ;
}
