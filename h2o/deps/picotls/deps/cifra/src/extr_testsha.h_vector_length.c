
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int cf_chash_ctx ;
struct TYPE_3__ {size_t hashsz; int (* digest ) (int *,int*) ;int (* update ) (int *,int*,size_t) ;int (* init ) (int *) ;} ;
typedef TYPE_1__ cf_chash ;


 int CF_MAXHASH ;
 int TEST_CHECK (int) ;
 scalar_t__ memcmp (void const*,int*,size_t) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *,int*,int) ;
 int stub4 (int *,int*) ;
 int stub5 (int *,int*,size_t) ;
 int stub6 (int *,int*) ;

__attribute__((used)) static inline void vector_length(const cf_chash *h,
                                 size_t max,
                                 const void *expect, size_t nexpect)
{
  cf_chash_ctx outer, inner;
  uint8_t digest[CF_MAXHASH];

  h->init(&outer);

  for (size_t n = 0; n < max; n++)
  {
    h->init(&inner);

    for (size_t i = 0; i < n; i++)
    {
      uint8_t byte = (uint8_t) n & 0xff;
      h->update(&inner, &byte, 1);
    }

    h->digest(&inner, digest);

    h->update(&outer, digest, h->hashsz);
  }

  h->digest(&outer, digest);

  TEST_CHECK(h->hashsz == nexpect);
  TEST_CHECK(memcmp(expect, digest, nexpect) == 0);
}
