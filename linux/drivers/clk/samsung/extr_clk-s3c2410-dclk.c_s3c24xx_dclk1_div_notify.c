
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_dclk {int dummy; } ;
struct notifier_block {int dummy; } ;


 int DCLKCON_DCLK1_CMP_SHIFT ;
 int DCLKCON_DCLK1_DIV_SHIFT ;
 int NOTIFY_DONE ;
 unsigned long POST_RATE_CHANGE ;
 int s3c24xx_dclk_update_cmp (struct s3c24xx_dclk*,int ,int ) ;
 struct s3c24xx_dclk* to_s3c24xx_dclk1 (struct notifier_block*) ;

__attribute__((used)) static int s3c24xx_dclk1_div_notify(struct notifier_block *nb,
          unsigned long event, void *data)
{
 struct s3c24xx_dclk *s3c24xx_dclk = to_s3c24xx_dclk1(nb);

 if (event == POST_RATE_CHANGE) {
  s3c24xx_dclk_update_cmp(s3c24xx_dclk,
   DCLKCON_DCLK1_DIV_SHIFT, DCLKCON_DCLK1_CMP_SHIFT);
 }

 return NOTIFY_DONE;
}
