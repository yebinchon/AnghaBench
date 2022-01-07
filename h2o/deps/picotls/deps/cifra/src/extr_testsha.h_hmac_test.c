
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
 int cf_hmac (int*,int,int*,int,int*,TYPE_1__ const*) ;
 scalar_t__ memcmp (int*,void const*,int ) ;
 int memcpy (int*,char*,int) ;
 int memset (int*,int,int) ;

__attribute__((used)) static inline void hmac_test(const cf_chash *hash,
                             const void *hi_there,
                             const void *jefe,
                             const void *aa_dd,
                             const void *counter_key)
{
  uint8_t sig[CF_MAXHASH];
  uint8_t key[25], message[50];




  memset(key, 0x0b, 20);
  memcpy(message, "Hi There", 8);
  cf_hmac(key, 20, message, 8, sig, hash);

  TEST_CHECK(memcmp(sig, hi_there, hash->hashsz) == 0);




  memcpy(key, "Jefe", 4);
  memcpy(message, "what do ya want for nothing?", 28);
  cf_hmac(key, 4, message, 28, sig, hash);
  TEST_CHECK(memcmp(sig, jefe, hash->hashsz) == 0);




  memset(key, 0xaa, 20);
  memset(message, 0xdd, 50);
  cf_hmac(key, 20, message, 50, sig, hash);
  TEST_CHECK(memcmp(sig, aa_dd, hash->hashsz) == 0);




  for (uint8_t i = 1; i < 26; i++)
    key[i - 1] = i;
  memset(message, 0xcd, 50);
  cf_hmac(key, 25, message, 50, sig, hash);
  TEST_CHECK(memcmp(sig, counter_key, hash->hashsz) == 0);
}
