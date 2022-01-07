
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int cf_cmac ;
typedef int cf_aes_context ;
struct TYPE_3__ {size_t blocksz; } ;


 int TEST_CHECK (int) ;
 TYPE_1__ cf_aes ;
 int cf_aes_init (int *,void const*,size_t) ;
 int cf_cmac_init (int *,TYPE_1__*,int *) ;
 int cf_cmac_sign (int *,void const*,size_t,int *) ;
 scalar_t__ memcmp (int *,void const*,size_t) ;

__attribute__((used)) static void check_cmac(const void *key, size_t nkey,
                       const void *msg, size_t nmsg,
                       const void *wanttag, size_t ntag)
{
  uint8_t gottag[16];

  TEST_CHECK(cf_aes.blocksz == ntag);

  cf_aes_context aes;
  cf_aes_init(&aes, key, nkey);

  cf_cmac cmac;
  cf_cmac_init(&cmac, &cf_aes, &aes);
  cf_cmac_sign(&cmac, msg, nmsg, gottag);

  TEST_CHECK(memcmp(gottag, wanttag, cf_aes.blocksz) == 0);
}
