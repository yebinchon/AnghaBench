
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dev; } ;
struct proxy_dev {int state; int buf_lock; } ;


 int STATE_OPENED_FLAG ;
 struct proxy_dev* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool vtpm_proxy_tpm_req_canceled(struct tpm_chip *chip, u8 status)
{
 struct proxy_dev *proxy_dev = dev_get_drvdata(&chip->dev);
 bool ret;

 mutex_lock(&proxy_dev->buf_lock);

 ret = !(proxy_dev->state & STATE_OPENED_FLAG);

 mutex_unlock(&proxy_dev->buf_lock);

 return ret;
}
