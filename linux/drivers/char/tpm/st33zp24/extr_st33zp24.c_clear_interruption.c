
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct st33zp24_dev {int phy_id; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* send ) (int ,int ,int *,int) ;int (* recv ) (int ,int ,int *,int) ;} ;


 int TPM_INT_STATUS ;
 int stub1 (int ,int ,int *,int) ;
 int stub2 (int ,int ,int *,int) ;

__attribute__((used)) static u8 clear_interruption(struct st33zp24_dev *tpm_dev)
{
 u8 interrupt;

 tpm_dev->ops->recv(tpm_dev->phy_id, TPM_INT_STATUS, &interrupt, 1);
 tpm_dev->ops->send(tpm_dev->phy_id, TPM_INT_STATUS, &interrupt, 1);
 return interrupt;
}
