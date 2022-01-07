
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int TEST_CHECK (int) ;
 int cf_pbkdf2_hmac (void const*,size_t,void const*,size_t,int ,int *,size_t,int *) ;
 int cf_sha256 ;
 scalar_t__ memcmp (void const*,int *,size_t) ;

__attribute__((used)) static void check_pkbdf2_sha256(const void *pw, size_t npw,
                                const void *salt, size_t nsalt,
                                uint32_t iters,
                                const void *expect, size_t nexpect)
{
  uint8_t output[64];

  cf_pbkdf2_hmac((const void *) pw, npw,
                 (const void *) salt, nsalt,
                 iters,
                 output, nexpect,
                 &cf_sha256);

  TEST_CHECK(memcmp(expect, output, nexpect) == 0);
}
