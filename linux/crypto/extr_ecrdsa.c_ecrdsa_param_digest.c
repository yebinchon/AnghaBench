
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecrdsa_ctx {int digest_oid; } ;


 int EINVAL ;
 int look_up_OID (void const*,size_t) ;

int ecrdsa_param_digest(void *context, size_t hdrlen, unsigned char tag,
   const void *value, size_t vlen)
{
 struct ecrdsa_ctx *ctx = context;
 int digest_oid = look_up_OID(value, vlen);

 if (digest_oid != ctx->digest_oid)
  return -EINVAL;
 return 0;
}
