
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA1_CTX ;


 int SHA1DCFinal (unsigned char*,int *) ;
 int die (char*,int ) ;
 int sha1_to_hex (unsigned char*) ;

void git_SHA1DCFinal(unsigned char hash[20], SHA1_CTX *ctx)
{
 if (!SHA1DCFinal(hash, ctx))
  return;
 die("SHA-1 appears to be part of a collision attack: %s",
     sha1_to_hex(hash));
}
