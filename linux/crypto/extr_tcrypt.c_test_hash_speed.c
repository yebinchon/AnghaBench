
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_speed {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 void test_ahash_speed_common (char const*,unsigned int,struct hash_speed*,int ) ;

__attribute__((used)) static void test_hash_speed(const char *algo, unsigned int secs,
       struct hash_speed *speed)
{
 return test_ahash_speed_common(algo, secs, speed, CRYPTO_ALG_ASYNC);
}
