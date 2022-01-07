
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_chip {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* go_idle ) (struct tpm_chip*) ;} ;


 int stub1 (struct tpm_chip*) ;

__attribute__((used)) static int tpm_go_idle(struct tpm_chip *chip)
{
 if (!chip->ops->go_idle)
  return 0;

 return chip->ops->go_idle(chip);
}
