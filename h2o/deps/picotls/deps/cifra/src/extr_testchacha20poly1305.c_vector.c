
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TEST_CHECK (int) ;
 int assert (int) ;
 int cf_chacha20poly1305_decrypt (int*,int*,int*,size_t,int*,size_t,int*,int*) ;
 int cf_chacha20poly1305_encrypt (int*,int*,int*,size_t,int*,size_t,int*,int*) ;
 scalar_t__ memcmp (int*,int*,size_t) ;
 size_t unhex (int*,int,char const*) ;

__attribute__((used)) static void vector(const char *keystr,
                   const char *noncestr,
                   const char *headerstr,
                   const char *plainstr,
                   const char *cipherstr,
                   const char *tagstr)
{

  uint8_t K[32], N[12], H[12], A[16];
  uint8_t C[265], P[265];

  unhex(K, sizeof K, keystr);
  unhex(N, sizeof N, noncestr);
  size_t headerlen = unhex(H, sizeof H, headerstr);
  size_t plainlen = unhex(P, sizeof P, plainstr);
  size_t cipherlen = unhex(C, sizeof C, cipherstr);
  unhex(A, sizeof A, tagstr);

  assert(cipherlen == plainlen);


  uint8_t out[265], ourtag[16];


  cf_chacha20poly1305_encrypt(K, N,
                              H, headerlen,
                              P, plainlen,
                              out, ourtag);

  TEST_CHECK(memcmp(out, C, cipherlen) == 0);
  TEST_CHECK(memcmp(ourtag, A, sizeof A) == 0);


  TEST_CHECK(0 == cf_chacha20poly1305_decrypt(K, N,
                                              H, headerlen,
                                              C, cipherlen,
                                              A, out));
  TEST_CHECK(0 == memcmp(out, P, plainlen));


  C[0] ^= 0xff;

  TEST_CHECK(1 == cf_chacha20poly1305_decrypt(K, N,
                                              H, headerlen,
                                              C, cipherlen,
                                              A, out));
}
