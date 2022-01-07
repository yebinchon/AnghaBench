
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned short ecard_getu16(unsigned char *v)
{
 return v[0] | v[1] << 8;
}
