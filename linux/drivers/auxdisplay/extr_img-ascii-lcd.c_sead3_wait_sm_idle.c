
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_ascii_lcd_ctx {scalar_t__ offset; int regmap; } ;


 scalar_t__ SEAD3_REG_CPLD_STATUS ;
 unsigned int SEAD3_REG_CPLD_STATUS_BUSY ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static int sead3_wait_sm_idle(struct img_ascii_lcd_ctx *ctx)
{
 unsigned int status;
 int err;

 do {
  err = regmap_read(ctx->regmap,
      ctx->offset + SEAD3_REG_CPLD_STATUS,
      &status);
  if (err)
   return err;
 } while (status & SEAD3_REG_CPLD_STATUS_BUSY);

 return 0;

}
