
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecrdsa_ctx {int curve_oid; int curve; } ;


 int EINVAL ;
 int get_curve_by_oid (int ) ;
 int look_up_OID (void const*,size_t) ;

int ecrdsa_param_curve(void *context, size_t hdrlen, unsigned char tag,
         const void *value, size_t vlen)
{
 struct ecrdsa_ctx *ctx = context;

 ctx->curve_oid = look_up_OID(value, vlen);
 if (!ctx->curve_oid)
  return -EINVAL;
 ctx->curve = get_curve_by_oid(ctx->curve_oid);
 return 0;
}
