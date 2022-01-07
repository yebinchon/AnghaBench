
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvtpm_dev {int dev; int vdev; } ;


 int H_SUCCESS ;
 int INIT_CRQ_COMP_CMD ;
 int dev_err (int ,char*,int) ;
 int ibmvtpm_send_crq_word (int ,int ) ;

__attribute__((used)) static int ibmvtpm_crq_send_init_complete(struct ibmvtpm_dev *ibmvtpm)
{
 int rc;

 rc = ibmvtpm_send_crq_word(ibmvtpm->vdev, INIT_CRQ_COMP_CMD);
 if (rc != H_SUCCESS)
  dev_err(ibmvtpm->dev,
   "ibmvtpm_crq_send_init_complete failed rc=%d\n", rc);

 return rc;
}
