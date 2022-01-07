
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct tpm_chip {struct device dev; } ;
struct ibmvtpm_dev {int dev; int vdev; } ;


 int H_SUCCESS ;
 int IBMVTPM_VALID_CMD ;
 int VTPM_PREPARE_TO_SUSPEND ;
 int dev_err (int ,char*,int) ;
 void* dev_get_drvdata (struct device*) ;
 int ibmvtpm_send_crq (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int tpm_ibmvtpm_suspend(struct device *dev)
{
 struct tpm_chip *chip = dev_get_drvdata(dev);
 struct ibmvtpm_dev *ibmvtpm = dev_get_drvdata(&chip->dev);
 int rc = 0;

 rc = ibmvtpm_send_crq(ibmvtpm->vdev,
   IBMVTPM_VALID_CMD, VTPM_PREPARE_TO_SUSPEND, 0, 0);
 if (rc != H_SUCCESS)
  dev_err(ibmvtpm->dev,
   "tpm_ibmvtpm_suspend failed rc=%d\n", rc);

 return rc;
}
