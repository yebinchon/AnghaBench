
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int dev; } ;
struct tpm_chip {int dev; } ;
struct ibmvtpm_dev {unsigned long rtce_size; } ;


 unsigned long CRQ_RES_BUF_SIZE ;
 unsigned long PAGE_SIZE ;
 void* dev_get_drvdata (int *) ;

__attribute__((used)) static unsigned long tpm_ibmvtpm_get_desired_dma(struct vio_dev *vdev)
{
 struct tpm_chip *chip = dev_get_drvdata(&vdev->dev);
 struct ibmvtpm_dev *ibmvtpm;






 if (chip)
  ibmvtpm = dev_get_drvdata(&chip->dev);
 else
  return CRQ_RES_BUF_SIZE + PAGE_SIZE;

 return CRQ_RES_BUF_SIZE + ibmvtpm->rtce_size;
}
