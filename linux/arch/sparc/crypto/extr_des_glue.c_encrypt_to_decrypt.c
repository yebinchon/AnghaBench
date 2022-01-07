
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int DES_EXPKEY_WORDS ;

__attribute__((used)) static void encrypt_to_decrypt(u64 *d, const u64 *e)
{
 const u64 *s = e + (DES_EXPKEY_WORDS / 2) - 1;
 int i;

 for (i = 0; i < DES_EXPKEY_WORDS / 2; i++)
  *d++ = *s--;
}
