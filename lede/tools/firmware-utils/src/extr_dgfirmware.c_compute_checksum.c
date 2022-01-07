
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int compute_checksum(unsigned char* img)
{
  int i;
  short s=0;

  for (i=0; i<0x3dfffc; i++)
    s += img[i];

  return s;
}
