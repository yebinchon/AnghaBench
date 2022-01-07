
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;
struct crb_priv {int dummy; } ;


 int __crb_request_locality (int *,struct crb_priv*,int) ;
 struct crb_priv* dev_get_drvdata (int *) ;

__attribute__((used)) static int crb_request_locality(struct tpm_chip *chip, int loc)
{
 struct crb_priv *priv = dev_get_drvdata(&chip->dev);

 return __crb_request_locality(&chip->dev, priv, loc);
}
