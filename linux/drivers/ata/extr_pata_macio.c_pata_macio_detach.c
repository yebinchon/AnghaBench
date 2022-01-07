
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pata_macio_priv {TYPE_2__* mdev; TYPE_1__* host; } ;
struct macio_dev {int dummy; } ;
struct ata_host {struct pata_macio_priv* private_data; } ;
struct TYPE_4__ {int media_bay; } ;
struct TYPE_3__ {int * private_data; } ;


 int ata_host_detach (struct ata_host*) ;
 int lock_media_bay (int ) ;
 struct ata_host* macio_get_drvdata (struct macio_dev*) ;
 int unlock_media_bay (int ) ;

__attribute__((used)) static int pata_macio_detach(struct macio_dev *mdev)
{
 struct ata_host *host = macio_get_drvdata(mdev);
 struct pata_macio_priv *priv = host->private_data;

 lock_media_bay(priv->mdev->media_bay);




 priv->host->private_data = ((void*)0);

 ata_host_detach(host);

 unlock_media_bay(priv->mdev->media_bay);

 return 0;
}
