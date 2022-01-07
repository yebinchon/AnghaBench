
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_chip {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* clk_enable ) (struct tpm_chip*,int) ;} ;


 int stub1 (struct tpm_chip*,int) ;

__attribute__((used)) static void tpm_clk_disable(struct tpm_chip *chip)
{
 if (chip->ops->clk_enable)
  chip->ops->clk_enable(chip, 0);
}
