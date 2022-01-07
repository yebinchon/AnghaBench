
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cf_sha512_context ;


 int cf_sha512_update (int *,void const*,size_t) ;

void cf_sha384_update(cf_sha512_context *ctx, const void *data, size_t nbytes)
{
  cf_sha512_update(ctx, data, nbytes);
}
