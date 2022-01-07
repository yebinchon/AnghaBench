
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sram_parameters {unsigned int sram_size; int sram_offset; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_5__ {int ctl; int srbarea0; int srbar0; } ;


 int EINVAL ;
 int L2CR_L2E ;
 int L2CR_L2FI ;
 int L2CR_SRAM_EIGHTH ;
 int L2CR_SRAM_FULL ;
 int L2CR_SRAM_HALF ;
 int L2CR_SRAM_QUART ;
 int L2SRAM_BARE_MSK_HI4 ;
 int L2SRAM_BAR_MSK_LO18 ;




 int clrsetbits_be32 (int *,int,int) ;
 int dev_err (TYPE_4__*,char*) ;
 int eieio () ;
 scalar_t__ get_cache_sram_params (struct sram_parameters*) ;
 long instantiate_cache_sram (struct platform_device*,struct sram_parameters) ;
 int iounmap (TYPE_1__*) ;
 TYPE_1__* l2ctlr ;
 int lower_32_bits (int ) ;
 unsigned int* of_get_property (int ,char*,int *) ;
 TYPE_1__* of_iomap (int ,int ) ;
 int out_be32 (int *,int) ;
 int setbits32 (int *,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int mpc85xx_l2ctlr_of_probe(struct platform_device *dev)
{
 long rval;
 unsigned int rem;
 unsigned char ways;
 const unsigned int *prop;
 unsigned int l2cache_size;
 struct sram_parameters sram_params;

 if (!dev->dev.of_node) {
  dev_err(&dev->dev, "Device's OF-node is NULL\n");
  return -EINVAL;
 }

 prop = of_get_property(dev->dev.of_node, "cache-size", ((void*)0));
 if (!prop) {
  dev_err(&dev->dev, "Missing L2 cache-size\n");
  return -EINVAL;
 }
 l2cache_size = *prop;

 if (get_cache_sram_params(&sram_params))
  return 0;

 rem = l2cache_size % sram_params.sram_size;
 ways = 130 * sram_params.sram_size / l2cache_size;
 if (rem || (ways & (ways - 1))) {
  dev_err(&dev->dev, "Illegal cache-sram-size in command line\n");
  return -EINVAL;
 }

 l2ctlr = of_iomap(dev->dev.of_node, 0);
 if (!l2ctlr) {
  dev_err(&dev->dev, "Can't map L2 controller\n");
  return -EINVAL;
 }




 out_be32(&l2ctlr->srbar0,
  lower_32_bits(sram_params.sram_offset) & L2SRAM_BAR_MSK_LO18);
 clrsetbits_be32(&l2ctlr->ctl, L2CR_L2E, L2CR_L2FI);

 switch (ways) {
 case 131:
  setbits32(&l2ctlr->ctl,
   L2CR_L2E | L2CR_L2FI | L2CR_SRAM_EIGHTH);
  break;

 case 128:
  setbits32(&l2ctlr->ctl,
   L2CR_L2E | L2CR_L2FI | L2CR_SRAM_QUART);
  break;

 case 129:
  setbits32(&l2ctlr->ctl,
   L2CR_L2E | L2CR_L2FI | L2CR_SRAM_HALF);
  break;

 case 130:
 default:
  setbits32(&l2ctlr->ctl,
   L2CR_L2E | L2CR_L2FI | L2CR_SRAM_FULL);
  break;
 }
 eieio();

 rval = instantiate_cache_sram(dev, sram_params);
 if (rval < 0) {
  dev_err(&dev->dev, "Can't instantiate Cache-SRAM\n");
  iounmap(l2ctlr);
  return -EINVAL;
 }

 return 0;
}
