
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MD4_CTX ;


 int MD4Final (unsigned char*,int *) ;
 int MD4Init (int *) ;
 int MD4Update (int *,int const*,size_t) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
  unsigned char digest[16];
  MD4_CTX ctx;

  MD4Init(&ctx);
  MD4Update(&ctx, data, size);
  MD4Final(digest, &ctx);

  return 0;
}
