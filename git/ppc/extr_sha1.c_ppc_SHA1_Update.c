
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {unsigned char const* b; } ;
struct TYPE_5__ {int len; int cnt; int hash; TYPE_1__ buf; } ;
typedef TYPE_2__ ppc_SHA_CTX ;


 int memcpy (unsigned char const*,unsigned char const*,unsigned long) ;
 int ppc_sha1_core (int ,unsigned char const*,unsigned long) ;

int ppc_SHA1_Update(ppc_SHA_CTX *c, const void *ptr, unsigned long n)
{
 unsigned long nb;
 const unsigned char *p = ptr;

 c->len += (uint64_t) n << 3;
 while (n != 0) {
  if (c->cnt || n < 64) {
   nb = 64 - c->cnt;
   if (nb > n)
    nb = n;
   memcpy(&c->buf.b[c->cnt], p, nb);
   if ((c->cnt += nb) == 64) {
    ppc_sha1_core(c->hash, c->buf.b, 1);
    c->cnt = 0;
   }
  } else {
   nb = n >> 6;
   ppc_sha1_core(c->hash, p, nb);
   nb <<= 6;
  }
  n -= nb;
  p += nb;
 }
 return 0;
}
