
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dev; } ;
struct proxy_dev {scalar_t__ resp_len; } ;


 int VTPM_PROXY_REQ_COMPLETE_FLAG ;
 struct proxy_dev* dev_get_drvdata (int *) ;

__attribute__((used)) static u8 vtpm_proxy_tpm_op_status(struct tpm_chip *chip)
{
 struct proxy_dev *proxy_dev = dev_get_drvdata(&chip->dev);

 if (proxy_dev->resp_len)
  return VTPM_PROXY_REQ_COMPLETE_FLAG;

 return 0;
}
