
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvtpm_dev {int dev; int vdev; } ;


 int H_SUCCESS ;
 int IBMVTPM_VALID_CMD ;
 int VTPM_GET_VERSION ;
 int dev_err (int ,char*,int) ;
 int ibmvtpm_send_crq (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ibmvtpm_crq_get_version(struct ibmvtpm_dev *ibmvtpm)
{
 int rc;

 rc = ibmvtpm_send_crq(ibmvtpm->vdev,
   IBMVTPM_VALID_CMD, VTPM_GET_VERSION, 0, 0);
 if (rc != H_SUCCESS)
  dev_err(ibmvtpm->dev,
   "ibmvtpm_crq_get_version failed rc=%d\n", rc);

 return rc;
}
