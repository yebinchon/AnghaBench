
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;
typedef int SHA_CTX ;


 int SHA1_Final (unsigned char*,int *) ;
 int SHA1_Init (int *) ;
 scalar_t__ SHA1_Update ;
 int rwm_process (struct raw_message*,int,void*,int *) ;

int rwm_sha1 (struct raw_message *raw, int bytes, unsigned char output[20]) {
  static SHA_CTX ctx;

  SHA1_Init (&ctx);
  int res = rwm_process (raw, bytes, (void *)SHA1_Update, &ctx);
  SHA1_Final (output, &ctx);

  return res;
}
