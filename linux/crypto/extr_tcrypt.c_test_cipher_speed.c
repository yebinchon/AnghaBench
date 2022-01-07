
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cipher_speed_template {int dummy; } ;


 void test_skcipher_speed (char const*,int,unsigned int,struct cipher_speed_template*,unsigned int,int *,int) ;

__attribute__((used)) static void test_cipher_speed(const char *algo, int enc, unsigned int secs,
         struct cipher_speed_template *template,
         unsigned int tcount, u8 *keysize)
{
 return test_skcipher_speed(algo, enc, secs, template, tcount, keysize,
       0);
}
