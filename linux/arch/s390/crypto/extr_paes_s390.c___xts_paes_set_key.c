
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s390_pxts_ctx {unsigned long fc; TYPE_1__* pk; int * kb; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 unsigned long CPACF_KM_PXTS_128 ;
 unsigned long CPACF_KM_PXTS_256 ;
 int EINVAL ;
 scalar_t__ PKEY_KEYTYPE_AES_128 ;
 scalar_t__ PKEY_KEYTYPE_AES_256 ;
 scalar_t__ __paes_convert_key (int *,TYPE_1__*) ;
 scalar_t__ cpacf_test_func (int *,unsigned long) ;
 int km_functions ;

__attribute__((used)) static int __xts_paes_set_key(struct s390_pxts_ctx *ctx)
{
 unsigned long fc;

 if (__paes_convert_key(&ctx->kb[0], &ctx->pk[0]) ||
     __paes_convert_key(&ctx->kb[1], &ctx->pk[1]))
  return -EINVAL;

 if (ctx->pk[0].type != ctx->pk[1].type)
  return -EINVAL;


 fc = (ctx->pk[0].type == PKEY_KEYTYPE_AES_128) ? CPACF_KM_PXTS_128 :
  (ctx->pk[0].type == PKEY_KEYTYPE_AES_256) ?
  CPACF_KM_PXTS_256 : 0;


 ctx->fc = (fc && cpacf_test_func(&km_functions, fc)) ? fc : 0;

 return ctx->fc ? 0 : -EINVAL;
}
