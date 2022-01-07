
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {int dev; } ;
struct st33zp24_dev {int phy_id; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* recv ) (int ,int ,int *,int) ;} ;


 int TPM_STS ;
 struct st33zp24_dev* dev_get_drvdata (int *) ;
 int stub1 (int ,int ,int *,int) ;

__attribute__((used)) static u8 st33zp24_status(struct tpm_chip *chip)
{
 struct st33zp24_dev *tpm_dev = dev_get_drvdata(&chip->dev);
 u8 data;

 tpm_dev->ops->recv(tpm_dev->phy_id, TPM_STS, &data, 1);
 return data;
}
