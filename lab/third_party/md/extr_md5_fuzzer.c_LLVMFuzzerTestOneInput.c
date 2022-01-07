
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MD5_CTX ;


 int MD5Final (unsigned char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int const*,size_t) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
  unsigned char digest[16];
  MD5_CTX ctx;

  MD5Init(&ctx);
  MD5Update(&ctx, data, size);
  MD5Final(digest, &ctx);

  return 0;
}
