
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int cf_chash_ctx ;
struct TYPE_3__ {size_t hashsz; size_t blocksz; int (* digest ) (int *,int *) ;int (* update ) (int *,int const*,size_t) ;int (* init ) (int *) ;} ;
typedef TYPE_1__ cf_chash ;


 int CF_MAXHASH ;
 int TEST_CHECK (int) ;
 scalar_t__ memcmp (int *,char const*,size_t) ;
 int stub1 (int *) ;
 int stub2 (int *,int const*,int) ;
 int stub3 (int *,int const*,size_t) ;
 int stub4 (int *,int *) ;
 int stub5 (int *) ;
 int stub6 (int *,int const*,int) ;
 int stub7 (int *,int const*,size_t) ;
 int stub8 (int *,int *) ;

__attribute__((used)) static void vector(const cf_chash *hash,
                   const void *vmsg, size_t nmsg,
                   const char *expect, size_t nexpect)
{
  uint8_t digest[CF_MAXHASH];
  const uint8_t *msg = vmsg;
  size_t orig_nmsg = nmsg;

  cf_chash_ctx ctx;
  hash->init(&ctx);


  if (nmsg)
  {
    hash->update(&ctx, msg, 1);
    nmsg--;
    msg++;
  }

  hash->update(&ctx, msg, nmsg);
  hash->digest(&ctx, digest);
  TEST_CHECK(nexpect == hash->hashsz);
  TEST_CHECK(memcmp(digest, expect, nexpect) == 0);


  msg = vmsg;
  nmsg = orig_nmsg;

  hash->init(&ctx);
  if (nmsg >= hash->blocksz)
  {
    hash->update(&ctx, msg, hash->blocksz - 1);
    nmsg -= hash->blocksz - 1;
    msg += hash->blocksz - 1;
  }

  hash->update(&ctx, msg, nmsg);
  hash->digest(&ctx, digest);
  TEST_CHECK(memcmp(digest, expect, nexpect) == 0);
}
