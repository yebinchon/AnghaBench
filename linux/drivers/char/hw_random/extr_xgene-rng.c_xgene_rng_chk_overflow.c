
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_rng_dev {int failure_cnt; scalar_t__ csr_base; void* failure_ts; int dev; } ;


 int HZ ;
 int LONG_RUN_FAIL_MASK ;
 int MONOBIT_FAIL_MASK ;
 int NOISE_FAIL_MASK ;
 int POKER_FAIL_MASK ;
 scalar_t__ RNG_ALARMSTOP ;
 scalar_t__ RNG_INTR_STS_ACK ;
 int RUN_FAIL_MASK ;
 int SHUTDOWN_OFLO_MASK ;
 int STUCK_OUT_MASK ;
 int dev_err (int ,char*,int) ;
 void* jiffies ;
 int readl (scalar_t__) ;
 scalar_t__ time_after (void*,void*) ;
 int writel (int,scalar_t__) ;
 int xgene_rng_init_fro (struct xgene_rng_dev*,int) ;
 int xgene_rng_start_timer (struct xgene_rng_dev*) ;

__attribute__((used)) static void xgene_rng_chk_overflow(struct xgene_rng_dev *ctx)
{
 u32 val;

 val = readl(ctx->csr_base + RNG_INTR_STS_ACK);
 if (val & MONOBIT_FAIL_MASK)





  dev_err(ctx->dev, "test monobit failure error 0x%08X\n", val);
 if (val & POKER_FAIL_MASK)






  dev_err(ctx->dev, "test poker failure error 0x%08X\n", val);
 if (val & LONG_RUN_FAIL_MASK)




  dev_err(ctx->dev, "test long run failure error 0x%08X\n", val);
 if (val & RUN_FAIL_MASK)





  dev_err(ctx->dev, "test run failure error 0x%08X\n", val);
 if (val & NOISE_FAIL_MASK)

  dev_err(ctx->dev, "noise failure error 0x%08X\n", val);
 if (val & STUCK_OUT_MASK)




  dev_err(ctx->dev, "stuck out failure error 0x%08X\n", val);

 if (val & SHUTDOWN_OFLO_MASK) {
  u32 frostopped;


  if (++ctx->failure_cnt == 1) {

   ctx->failure_ts = jiffies;
   frostopped = readl(ctx->csr_base + RNG_ALARMSTOP);
   xgene_rng_init_fro(ctx, frostopped);





   xgene_rng_start_timer(ctx);
  } else {

   if (time_after(ctx->failure_ts + 60 * HZ, jiffies)) {
    dev_err(ctx->dev,
     "FRO shutdown failure error 0x%08X\n",
     val);
   } else {

    ctx->failure_ts = jiffies;
    ctx->failure_cnt = 1;





    xgene_rng_start_timer(ctx);
   }
   frostopped = readl(ctx->csr_base + RNG_ALARMSTOP);
   xgene_rng_init_fro(ctx, frostopped);
  }
 }

 writel(val, ctx->csr_base + RNG_INTR_STS_ACK);
}
