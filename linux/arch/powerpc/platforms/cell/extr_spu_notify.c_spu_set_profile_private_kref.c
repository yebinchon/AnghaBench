
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {void (* prof_priv_release ) (struct kref*) ;struct kref* prof_priv_kref; } ;
struct kref {int dummy; } ;



void spu_set_profile_private_kref(struct spu_context *ctx,
      struct kref *prof_info_kref,
      void (* prof_info_release) (struct kref *kref))
{
 ctx->prof_priv_kref = prof_info_kref;
 ctx->prof_priv_release = prof_info_release;
}
