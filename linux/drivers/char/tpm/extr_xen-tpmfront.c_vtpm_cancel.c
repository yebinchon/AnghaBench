
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_private {int evtchn; TYPE_1__* shr; } ;
struct tpm_chip {int dev; } ;
struct TYPE_2__ {int state; } ;


 int VTPM_STATE_CANCEL ;
 struct tpm_private* dev_get_drvdata (int *) ;
 int notify_remote_via_evtchn (int ) ;
 int wmb () ;

__attribute__((used)) static void vtpm_cancel(struct tpm_chip *chip)
{
 struct tpm_private *priv = dev_get_drvdata(&chip->dev);
 priv->shr->state = VTPM_STATE_CANCEL;
 wmb();
 notify_remote_via_evtchn(priv->evtchn);
}
