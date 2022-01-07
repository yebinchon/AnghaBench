
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* b; int * l; } ;
struct TYPE_5__ {unsigned int cnt; int hash; TYPE_1__ buf; int len; } ;
typedef TYPE_2__ ppc_SHA_CTX ;


 int memcpy (unsigned char*,int ,int) ;
 int memset (int*,int ,int) ;
 int ppc_sha1_core (int ,int*,int) ;

int ppc_SHA1_Final(unsigned char *hash, ppc_SHA_CTX *c)
{
 unsigned int cnt = c->cnt;

 c->buf.b[cnt++] = 0x80;
 if (cnt > 56) {
  if (cnt < 64)
   memset(&c->buf.b[cnt], 0, 64 - cnt);
  ppc_sha1_core(c->hash, c->buf.b, 1);
  cnt = 0;
 }
 if (cnt < 56)
  memset(&c->buf.b[cnt], 0, 56 - cnt);
 c->buf.l[7] = c->len;
 ppc_sha1_core(c->hash, c->buf.b, 1);
 memcpy(hash, c->hash, 20);
 return 0;
}
