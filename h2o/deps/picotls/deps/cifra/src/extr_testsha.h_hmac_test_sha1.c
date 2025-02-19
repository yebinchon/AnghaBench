
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int hashsz; } ;
typedef TYPE_1__ cf_chash ;


 int CF_MAXHASH ;
 int TEST_CHECK (int) ;
 int cf_hmac (int *,int,int *,int,int *,TYPE_1__ const*) ;
 scalar_t__ memcmp (int *,char const*,int ) ;
 int memcpy (int *,char*,int) ;
 int memset (int *,int,int) ;

__attribute__((used)) static inline void hmac_test_sha1(const cf_chash *hash,
                                  const char *long_key,
                                  const char *long_message)
{
  uint8_t sig[CF_MAXHASH];
  uint8_t key[80], message[73];




  memset(key, 0xaa, 80);
  memcpy(message, "Test Using Larger Than Block-Size Key - Hash Key First", 54);
  cf_hmac(key, 80, message, 54, sig, hash);
  TEST_CHECK(memcmp(sig, long_key, hash->hashsz) == 0);




  memset(key, 0xaa, 80);
  memcpy(message, "Test Using Larger Than Block-Size Key and Larger Than One Block-Size Data", 73);
  cf_hmac(key, 80, message, 73, sig, hash);
  TEST_CHECK(memcmp(sig, long_message, hash->hashsz) == 0);
}
