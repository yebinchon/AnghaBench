
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int* keyBuffer; } ;
typedef TYPE_1__ sha1nfo ;


 int BLOCK_LENGTH ;
 int HASH_LENGTH ;
 int HMAC_IPAD ;
 int memcpy (int*,int const*,int) ;
 int memset (int*,int ,int) ;
 int const* sha1_final (TYPE_1__*) ;
 int sha1_init (TYPE_1__*) ;
 int sha1_write1 (TYPE_1__*,int) ;

void sha1_init_hmac(sha1nfo *s, const uint8_t* key, int l_key)
{
 uint8_t i;
 memset(s->keyBuffer, 0, BLOCK_LENGTH);
 if (l_key > BLOCK_LENGTH) {
  sha1_init(s);
  while (l_key--) sha1_write1(s, *key++);
  memcpy(s->keyBuffer, sha1_final(s), HASH_LENGTH);
 } else memcpy(s->keyBuffer, key, l_key);
 sha1_init(s);
 for (i = 0; i < BLOCK_LENGTH; ++i)
  sha1_write1(s, s->keyBuffer[i] ^ HMAC_IPAD);
}
