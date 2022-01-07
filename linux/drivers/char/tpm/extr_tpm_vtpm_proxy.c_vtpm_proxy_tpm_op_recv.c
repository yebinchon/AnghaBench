
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tpm_chip {int dev; } ;
struct proxy_dev {int state; size_t resp_len; int buf_lock; int buffer; } ;


 size_t EIO ;
 int EPIPE ;
 int STATE_OPENED_FLAG ;
 int dev_err (int *,char*,size_t,size_t) ;
 struct proxy_dev* dev_get_drvdata (int *) ;
 int memcpy (int *,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vtpm_proxy_tpm_op_recv(struct tpm_chip *chip, u8 *buf, size_t count)
{
 struct proxy_dev *proxy_dev = dev_get_drvdata(&chip->dev);
 size_t len;


 mutex_lock(&proxy_dev->buf_lock);

 if (!(proxy_dev->state & STATE_OPENED_FLAG)) {
  mutex_unlock(&proxy_dev->buf_lock);
  return -EPIPE;
 }

 len = proxy_dev->resp_len;
 if (count < len) {
  dev_err(&chip->dev,
   "Invalid size in recv: count=%zd, resp_len=%zd\n",
   count, len);
  len = -EIO;
  goto out;
 }

 memcpy(buf, proxy_dev->buffer, len);
 proxy_dev->resp_len = 0;

out:
 mutex_unlock(&proxy_dev->buf_lock);

 return len;
}
