
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int be32dec (unsigned char const*) ;

__attribute__((used)) static void
be32dec_vect(uint32_t *dst, const unsigned char *src, size_t len)
{
 size_t i;

 for (i = 0; i < len / 4; i++)
  dst[i] = be32dec(src + i * 4);
}
