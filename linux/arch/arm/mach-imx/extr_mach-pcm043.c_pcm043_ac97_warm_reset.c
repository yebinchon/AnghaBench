
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;
typedef int iomux_v3_cfg_t ;


 int AC97_GPIO_TXFS ;
 int MX35_PAD_STXFS4__AUDMUX_AUD4_TXFS ;
 int MX35_PAD_STXFS4__GPIO2_31 ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int ) ;
 int mxc_iomux_v3_setup_pad (int ) ;
 int printk (char*,int) ;
 int udelay (int) ;

__attribute__((used)) static void pcm043_ac97_warm_reset(struct snd_ac97 *ac97)
{
 iomux_v3_cfg_t txfs_gpio = MX35_PAD_STXFS4__GPIO2_31;
 iomux_v3_cfg_t txfs = MX35_PAD_STXFS4__AUDMUX_AUD4_TXFS;
 int ret;

 ret = gpio_request(AC97_GPIO_TXFS, "SSI");
 if (ret) {
  printk("failed to get GPIO_TXFS: %d\n", ret);
  return;
 }

 mxc_iomux_v3_setup_pad(txfs_gpio);


 gpio_direction_output(AC97_GPIO_TXFS, 1);
 udelay(2);
 gpio_set_value(AC97_GPIO_TXFS, 0);

 gpio_free(AC97_GPIO_TXFS);
 mxc_iomux_v3_setup_pad(txfs);
}
