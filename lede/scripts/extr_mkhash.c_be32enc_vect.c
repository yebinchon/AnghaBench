
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int be32enc (unsigned char*,int const) ;

__attribute__((used)) static void
be32enc_vect(unsigned char *dst, const uint32_t *src, size_t len)
{
 size_t i;

 for (i = 0; i < len / 4; i++)
  be32enc(dst + i * 4, src[i]);
}
