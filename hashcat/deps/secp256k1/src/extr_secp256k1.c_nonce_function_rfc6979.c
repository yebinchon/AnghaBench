
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_rfc6979_hmac_sha256 ;
typedef int keydata ;


 int buffer_append (unsigned char*,unsigned int*,unsigned char const*,int) ;
 int memset (unsigned char*,int ,int) ;
 int secp256k1_rfc6979_hmac_sha256_finalize (int *) ;
 int secp256k1_rfc6979_hmac_sha256_generate (int *,unsigned char*,int) ;
 int secp256k1_rfc6979_hmac_sha256_initialize (int *,unsigned char*,unsigned int) ;

__attribute__((used)) static int nonce_function_rfc6979(unsigned char *nonce32, const unsigned char *msg32, const unsigned char *key32, const unsigned char *algo16, void *data, unsigned int counter) {
   unsigned char keydata[112];
   unsigned int offset = 0;
   secp256k1_rfc6979_hmac_sha256 rng;
   unsigned int i;
   buffer_append(keydata, &offset, key32, 32);
   buffer_append(keydata, &offset, msg32, 32);
   if (data != ((void*)0)) {
       buffer_append(keydata, &offset, data, 32);
   }
   if (algo16 != ((void*)0)) {
       buffer_append(keydata, &offset, algo16, 16);
   }
   secp256k1_rfc6979_hmac_sha256_initialize(&rng, keydata, offset);
   memset(keydata, 0, sizeof(keydata));
   for (i = 0; i <= counter; i++) {
       secp256k1_rfc6979_hmac_sha256_generate(&rng, nonce32, 32);
   }
   secp256k1_rfc6979_hmac_sha256_finalize(&rng);
   return 1;
}
