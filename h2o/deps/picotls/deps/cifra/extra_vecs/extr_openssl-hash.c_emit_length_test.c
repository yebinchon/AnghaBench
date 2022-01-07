
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int EVP_DigestFinal (int *,size_t*,unsigned int*) ;
 int EVP_DigestInit (int *,int const*) ;
 int EVP_DigestUpdate (int *,size_t*,unsigned int) ;
 int EVP_MAX_MD_SIZE ;
 int printf (char*,...) ;
 int printhex (size_t*,size_t) ;

__attribute__((used)) static void emit_length_test(const char *name, const EVP_MD *h, size_t max)
{
  EVP_MD_CTX outer, inner;
  EVP_DigestInit(&outer, h);
  uint8_t digest[EVP_MAX_MD_SIZE];
  unsigned int digestlen;

  for (size_t n = 0; n < max; n++)
  {
    EVP_DigestInit(&inner, h);
    for (size_t i = 0; i < n; i++)
    {
      uint8_t byte = n & 0xff;
      EVP_DigestUpdate(&inner, &byte, 1);
    }
    digestlen = sizeof digest;
    EVP_DigestFinal(&inner, digest, &digestlen);

    EVP_DigestUpdate(&outer, digest, digestlen);
  }

  digestlen = sizeof digest;
  EVP_DigestFinal(&outer, digest, &digestlen);

  printf("%s(%zu) = ", name, max);
  printhex(digest, (size_t) digestlen);
  printf("\n");
}
