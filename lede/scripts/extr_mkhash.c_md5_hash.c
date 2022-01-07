
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD5_CTX ;
typedef int FILE ;


 int MD5_DIGEST_LENGTH ;
 int MD5_begin (int *) ;
 int MD5_end (unsigned char*,int *) ;
 int MD5_hash (void*,int,int *) ;
 void* hash_buf (int *,int*) ;
 char const* hash_string (unsigned char*,int) ;

__attribute__((used)) static const char *md5_hash(FILE *f)
{
 MD5_CTX ctx;
 unsigned char val[MD5_DIGEST_LENGTH];
 void *buf;
 int len;

 MD5_begin(&ctx);
 while ((buf = hash_buf(f, &len)) != ((void*)0))
  MD5_hash(buf, len, &ctx);
 MD5_end(val, &ctx);

 return hash_string(val, MD5_DIGEST_LENGTH);
}
