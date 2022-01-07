
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_chip {int locality; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* request_locality ) (struct tpm_chip*,int ) ;} ;


 int stub1 (struct tpm_chip*,int ) ;

__attribute__((used)) static int tpm_request_locality(struct tpm_chip *chip)
{
 int rc;

 if (!chip->ops->request_locality)
  return 0;

 rc = chip->ops->request_locality(chip, 0);
 if (rc < 0)
  return rc;

 chip->locality = rc;
 return 0;
}
