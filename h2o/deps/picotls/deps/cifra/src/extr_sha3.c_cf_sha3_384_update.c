
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cf_sha3_context ;


 int sha3_update (int *,void const*,size_t) ;

void cf_sha3_384_update(cf_sha3_context *ctx, const void *data, size_t nbytes)
{
  sha3_update(ctx, data, nbytes);
}
