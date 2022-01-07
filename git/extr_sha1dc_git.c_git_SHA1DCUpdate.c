
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA1_CTX ;


 unsigned long INT_MAX ;
 int SHA1DCUpdate (int *,char const*,unsigned long) ;

void git_SHA1DCUpdate(SHA1_CTX *ctx, const void *vdata, unsigned long len)
{
 const char *data = vdata;

 while (len > INT_MAX) {
  SHA1DCUpdate(ctx, data, INT_MAX);
  data += INT_MAX;
  len -= INT_MAX;
 }
 SHA1DCUpdate(ctx, data, len);
}
