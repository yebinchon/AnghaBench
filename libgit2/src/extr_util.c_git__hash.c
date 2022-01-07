
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int MURMUR_BLOCK () ;

uint32_t git__hash(const void *key, int len, uint32_t seed)
{
 const uint8_t *data = (const uint8_t*)key;
 const int nblocks = len / 4;

 const uint32_t *blocks = (const uint32_t *)(data + nblocks * 4);
 const uint8_t *tail = (const uint8_t *)(data + nblocks * 4);

 uint32_t h1 = 0x971e137b ^ seed;
 uint32_t k1;

 uint32_t c1 = 0x95543787;
 uint32_t c2 = 0x2ad7eb25;

 int i;

 for (i = -nblocks; i; i++) {
  k1 = blocks[i];
  { k1 *= c1; k1 = git__rotl(k1,11); k1 *= c2; h1 ^= k1; h1 = h1*3 + 0x52dce729; c1 = c1*5 + 0x7b7d159c; c2 = c2*5 + 0x6bce6396;};
 }

 k1 = 0;

 switch(len & 3) {
 case 3: k1 ^= tail[2] << 16;

 case 2: k1 ^= tail[1] << 8;

 case 1: k1 ^= tail[0];
  { k1 *= c1; k1 = git__rotl(k1,11); k1 *= c2; h1 ^= k1; h1 = h1*3 + 0x52dce729; c1 = c1*5 + 0x7b7d159c; c2 = c2*5 + 0x6bce6396;};
 }

 h1 ^= len;
 h1 ^= h1 >> 16;
 h1 *= 0x85ebca6b;
 h1 ^= h1 >> 13;
 h1 *= 0xc2b2ae35;
 h1 ^= h1 >> 16;

 return h1;
}
