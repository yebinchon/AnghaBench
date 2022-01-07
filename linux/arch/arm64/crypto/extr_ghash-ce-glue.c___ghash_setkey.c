
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ghash_key {int h4; int k; int h3; int h2; int h; } ;
typedef int be128 ;


 int GHASH_BLOCK_SIZE ;
 int gf128mul_lle (int *,int *) ;
 int ghash_reflect (int ,int *) ;
 int memcpy (int *,int const*,int ) ;

__attribute__((used)) static int __ghash_setkey(struct ghash_key *key,
     const u8 *inkey, unsigned int keylen)
{
 be128 h;


 memcpy(&key->k, inkey, GHASH_BLOCK_SIZE);

 ghash_reflect(key->h, &key->k);

 h = key->k;
 gf128mul_lle(&h, &key->k);
 ghash_reflect(key->h2, &h);

 gf128mul_lle(&h, &key->k);
 ghash_reflect(key->h3, &h);

 gf128mul_lle(&h, &key->k);
 ghash_reflect(key->h4, &h);

 return 0;
}
