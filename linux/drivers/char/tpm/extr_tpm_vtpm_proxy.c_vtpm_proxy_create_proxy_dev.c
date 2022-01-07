
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_chip {int dev; } ;
struct proxy_dev {struct tpm_chip* chip; int work; int buf_lock; int wq; } ;


 int ENOMEM ;
 struct proxy_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct tpm_chip*) ;
 int PTR_ERR (struct tpm_chip*) ;
 int dev_set_drvdata (int *,struct proxy_dev*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct proxy_dev*) ;
 struct proxy_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 struct tpm_chip* tpm_chip_alloc (int *,int *) ;
 int vtpm_proxy_tpm_ops ;
 int vtpm_proxy_work ;

__attribute__((used)) static struct proxy_dev *vtpm_proxy_create_proxy_dev(void)
{
 struct proxy_dev *proxy_dev;
 struct tpm_chip *chip;
 int err;

 proxy_dev = kzalloc(sizeof(*proxy_dev), GFP_KERNEL);
 if (proxy_dev == ((void*)0))
  return ERR_PTR(-ENOMEM);

 init_waitqueue_head(&proxy_dev->wq);
 mutex_init(&proxy_dev->buf_lock);
 INIT_WORK(&proxy_dev->work, vtpm_proxy_work);

 chip = tpm_chip_alloc(((void*)0), &vtpm_proxy_tpm_ops);
 if (IS_ERR(chip)) {
  err = PTR_ERR(chip);
  goto err_proxy_dev_free;
 }
 dev_set_drvdata(&chip->dev, proxy_dev);

 proxy_dev->chip = chip;

 return proxy_dev;

err_proxy_dev_free:
 kfree(proxy_dev);

 return ERR_PTR(err);
}
