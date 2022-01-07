
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mpc52xx_gpt_priv {int dummy; } ;


 int mpc52xx_gpt_do_start (struct mpc52xx_gpt_priv*,int ,int,int ) ;

int mpc52xx_gpt_start_timer(struct mpc52xx_gpt_priv *gpt, u64 period,
                            int continuous)
{
 return mpc52xx_gpt_do_start(gpt, period, continuous, 0);
}
