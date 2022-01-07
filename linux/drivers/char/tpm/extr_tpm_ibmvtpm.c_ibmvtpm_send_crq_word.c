
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vio_dev {int unit_address; } ;


 int H_SEND_CRQ ;
 int plpar_hcall_norets (int ,int ,int ,int ) ;

__attribute__((used)) static int ibmvtpm_send_crq_word(struct vio_dev *vdev, u64 w1)
{
 return plpar_hcall_norets(H_SEND_CRQ, vdev->unit_address, w1, 0);
}
