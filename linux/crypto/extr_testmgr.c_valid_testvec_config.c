
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct testvec_config {scalar_t__ iv_offset; scalar_t__ finalization_type; int req_flags; scalar_t__ nosimd; scalar_t__ iv_offset_relative_to_alignmask; TYPE_1__* dst_divs; TYPE_1__* src_divs; int * name; } ;
struct TYPE_4__ {scalar_t__ proportion_of_total; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 scalar_t__ FINALIZATION_TYPE_DIGEST ;
 scalar_t__ MAX_ALGAPI_ALIGNMASK ;
 int SGDIVS_HAVE_FLUSHES ;
 int SGDIVS_HAVE_NOSIMD ;
 scalar_t__ memchr_inv (TYPE_1__*,int ,int) ;
 int valid_sg_divisions (TYPE_1__*,int ,int*) ;

__attribute__((used)) static bool valid_testvec_config(const struct testvec_config *cfg)
{
 int flags = 0;

 if (cfg->name == ((void*)0))
  return 0;

 if (!valid_sg_divisions(cfg->src_divs, ARRAY_SIZE(cfg->src_divs),
    &flags))
  return 0;

 if (cfg->dst_divs[0].proportion_of_total) {
  if (!valid_sg_divisions(cfg->dst_divs,
     ARRAY_SIZE(cfg->dst_divs), &flags))
   return 0;
 } else {
  if (memchr_inv(cfg->dst_divs, 0, sizeof(cfg->dst_divs)))
   return 0;

 }

 if (cfg->iv_offset +
     (cfg->iv_offset_relative_to_alignmask ? MAX_ALGAPI_ALIGNMASK : 0) >
     MAX_ALGAPI_ALIGNMASK + 1)
  return 0;

 if ((flags & (SGDIVS_HAVE_FLUSHES | SGDIVS_HAVE_NOSIMD)) &&
     cfg->finalization_type == FINALIZATION_TYPE_DIGEST)
  return 0;

 if ((cfg->nosimd || (flags & SGDIVS_HAVE_NOSIMD)) &&
     (cfg->req_flags & CRYPTO_TFM_REQ_MAY_SLEEP))
  return 0;

 return 1;
}
