
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void xor_vectors(unsigned char *in1, unsigned char *in2,
   unsigned char *out, unsigned int size)
{
 int i;

 for (i = 0; i < size; i++)
  out[i] = in1[i] ^ in2[i];

}
