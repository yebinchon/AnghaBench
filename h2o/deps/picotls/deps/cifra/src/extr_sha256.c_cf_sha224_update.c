
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cf_sha256_context ;


 int cf_sha256_update (int *,void const*,size_t) ;

void cf_sha224_update(cf_sha256_context *ctx, const void *data, size_t nbytes)
{
  cf_sha256_update(ctx, data, nbytes);
}
