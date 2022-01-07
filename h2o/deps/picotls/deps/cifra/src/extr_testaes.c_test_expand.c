
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ const* ks; } ;
typedef TYPE_1__ cf_aes_context ;


 int TEST_CHECK (int) ;
 int cf_aes_init (TYPE_1__*,int const*,size_t) ;

__attribute__((used)) static void test_expand(const uint8_t *key, size_t nkey,
                        const uint32_t *answer, size_t roundkeys)
{
  cf_aes_context ctx;

  cf_aes_init(&ctx, key, nkey);

  for (size_t i = 0; i < roundkeys; i++)
  {
    TEST_CHECK(ctx.ks[i] == answer[i]);
  }
}
