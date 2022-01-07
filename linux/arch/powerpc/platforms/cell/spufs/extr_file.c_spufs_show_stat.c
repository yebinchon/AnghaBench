
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t util_state; int libassist; int maj_flt; int min_flt; int hash_flt; int invol_ctx_switch; int vol_ctx_switch; } ;
struct spu_context {TYPE_1__ stats; } ;
struct seq_file {struct spu_context* private; } ;


 int SPU_UTIL_IDLE_LOADED ;
 int SPU_UTIL_IOWAIT ;
 int SPU_UTIL_SYSTEM ;
 int SPU_UTIL_USER ;
 int * ctx_state_names ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int spu_acquire (struct spu_context*) ;
 int spu_release (struct spu_context*) ;
 int spufs_acct_time (struct spu_context*,int ) ;
 int spufs_class2_intrs (struct spu_context*) ;
 int spufs_slb_flts (struct spu_context*) ;

__attribute__((used)) static int spufs_show_stat(struct seq_file *s, void *private)
{
 struct spu_context *ctx = s->private;
 int ret;

 ret = spu_acquire(ctx);
 if (ret)
  return ret;

 seq_printf(s, "%s %llu %llu %llu %llu "
        "%llu %llu %llu %llu %llu %llu %llu %llu\n",
  ctx_state_names[ctx->stats.util_state],
  spufs_acct_time(ctx, SPU_UTIL_USER),
  spufs_acct_time(ctx, SPU_UTIL_SYSTEM),
  spufs_acct_time(ctx, SPU_UTIL_IOWAIT),
  spufs_acct_time(ctx, SPU_UTIL_IDLE_LOADED),
  ctx->stats.vol_ctx_switch,
  ctx->stats.invol_ctx_switch,
  spufs_slb_flts(ctx),
  ctx->stats.hash_flt,
  ctx->stats.min_flt,
  ctx->stats.maj_flt,
  spufs_class2_intrs(ctx),
  ctx->stats.libassist);
 spu_release(ctx);
 return 0;
}
