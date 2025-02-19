
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int masks_avail; int masks_cnt; char** masks; } ;
typedef TYPE_1__ mask_ctx_t ;
struct TYPE_5__ {TYPE_1__* mask_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int INCR_MASKS ;
 scalar_t__ hcrealloc (char**,int,int) ;
 char* hcstrdup (char const*) ;

__attribute__((used)) static int mask_append_final (hashcat_ctx_t *hashcat_ctx, const char *mask)
{
  mask_ctx_t *mask_ctx = hashcat_ctx->mask_ctx;

  if (mask_ctx->masks_avail == mask_ctx->masks_cnt)
  {
    mask_ctx->masks = (char **) hcrealloc (mask_ctx->masks, mask_ctx->masks_avail * sizeof (char *), INCR_MASKS * sizeof (char *));

    mask_ctx->masks_avail += INCR_MASKS;
  }

  mask_ctx->masks[mask_ctx->masks_cnt] = hcstrdup (mask);

  mask_ctx->masks_cnt++;

  return 0;
}
