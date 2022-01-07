
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;
typedef int FILE ;


 int SHA256_DIGEST_LENGTH ;
 int SHA256_Final (unsigned char*,int *) ;
 int SHA256_Init (int *) ;
 int SHA256_Update (int *,void*,int) ;
 void* hash_buf (int *,int*) ;
 char const* hash_string (unsigned char*,int) ;

__attribute__((used)) static const char *sha256_hash(FILE *f)
{
 SHA256_CTX ctx;
 unsigned char val[SHA256_DIGEST_LENGTH];
 void *buf;
 int len;

 SHA256_Init(&ctx);
 while ((buf = hash_buf(f, &len)) != ((void*)0))
  SHA256_Update(&ctx, buf, len);
 SHA256_Final(val, &ctx);

 return hash_string(val, SHA256_DIGEST_LENGTH);
}
