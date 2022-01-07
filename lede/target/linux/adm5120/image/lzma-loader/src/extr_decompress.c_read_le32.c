
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline__ unsigned int read_le32(void *buf)
{
 unsigned char *p = buf;

 return ((unsigned int)p[0] + ((unsigned int)p[1] << 8) +
  ((unsigned int)p[2] << 16) +((unsigned int)p[3] << 24));
}
