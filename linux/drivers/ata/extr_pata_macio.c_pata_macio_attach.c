
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pata_macio_priv {struct macio_dev* mdev; TYPE_2__* dev; int node; } ;
struct of_device_id {int dummy; } ;
struct TYPE_6__ {int of_node; } ;
struct TYPE_5__ {TYPE_2__ dev; } ;
struct macio_dev {int media_bay; TYPE_1__ ofdev; } ;
typedef int resource_size_t ;


 int EBUSY ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_warn (TYPE_2__*,char*) ;
 struct pata_macio_priv* devm_kzalloc (TYPE_2__*,int,int ) ;
 unsigned long irq_create_mapping (int *,int) ;
 int lock_media_bay (int ) ;
 int macio_enable_devres (struct macio_dev*) ;
 unsigned long macio_irq (struct macio_dev*,int ) ;
 scalar_t__ macio_irq_count (struct macio_dev*) ;
 scalar_t__ macio_request_resource (struct macio_dev*,int,char*) ;
 int macio_resource_count (struct macio_dev*) ;
 int macio_resource_start (struct macio_dev*,int) ;
 int of_node_get (int ) ;
 int pata_macio_common_init (struct pata_macio_priv*,int ,int ,int ,unsigned long) ;
 int unlock_media_bay (int ) ;

__attribute__((used)) static int pata_macio_attach(struct macio_dev *mdev,
        const struct of_device_id *match)
{
 struct pata_macio_priv *priv;
 resource_size_t tfregs, dmaregs = 0;
 unsigned long irq;
 int rc;


 if (macio_resource_count(mdev) == 0) {
  dev_err(&mdev->ofdev.dev,
   "No addresses for controller\n");
  return -ENXIO;
 }


 macio_enable_devres(mdev);


 priv = devm_kzalloc(&mdev->ofdev.dev,
       sizeof(struct pata_macio_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->node = of_node_get(mdev->ofdev.dev.of_node);
 priv->mdev = mdev;
 priv->dev = &mdev->ofdev.dev;


 if (macio_request_resource(mdev, 0, "pata-macio")) {
  dev_err(&mdev->ofdev.dev,
   "Cannot obtain taskfile resource\n");
  return -EBUSY;
 }
 tfregs = macio_resource_start(mdev, 0);


 if (macio_resource_count(mdev) >= 2) {
  if (macio_request_resource(mdev, 1, "pata-macio-dma"))
   dev_err(&mdev->ofdev.dev,
    "Cannot obtain DMA resource\n");
  else
   dmaregs = macio_resource_start(mdev, 1);
 }
 if (macio_irq_count(mdev) == 0) {
  dev_warn(&mdev->ofdev.dev,
    "No interrupts for controller, using 13\n");
  irq = irq_create_mapping(((void*)0), 13);
 } else
  irq = macio_irq(mdev, 0);


 lock_media_bay(priv->mdev->media_bay);


 rc = pata_macio_common_init(priv,
        tfregs,
        dmaregs,
        0,
        irq);
 unlock_media_bay(priv->mdev->media_bay);

 return rc;
}
