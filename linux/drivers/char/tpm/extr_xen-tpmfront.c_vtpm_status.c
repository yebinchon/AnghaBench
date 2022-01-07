
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_private {TYPE_1__* shr; } ;
struct tpm_chip {int dev; } ;
struct TYPE_2__ {int state; } ;






 int VTPM_STATUS_CANCELED ;
 int VTPM_STATUS_IDLE ;
 int VTPM_STATUS_RESULT ;
 int VTPM_STATUS_RUNNING ;
 struct tpm_private* dev_get_drvdata (int *) ;

__attribute__((used)) static u8 vtpm_status(struct tpm_chip *chip)
{
 struct tpm_private *priv = dev_get_drvdata(&chip->dev);
 switch (priv->shr->state) {
 case 129:
  return VTPM_STATUS_IDLE | VTPM_STATUS_CANCELED;
 case 130:
  return VTPM_STATUS_IDLE | VTPM_STATUS_RESULT;
 case 128:
 case 131:
  return VTPM_STATUS_RUNNING;
 default:
  return 0;
 }
}
