
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_space {int dummy; } ;
struct tpm_chip {int dummy; } ;
struct file_priv {int response_read; int async_wait; int async_work; int timeout_work; int user_read_timer; int buffer_mutex; struct tpm_space* space; struct tpm_chip* chip; } ;
struct file {struct file_priv* private_data; } ;


 int INIT_WORK (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int tpm_dev_async_work ;
 int tpm_timeout_work ;
 int user_reader_timeout ;

void tpm_common_open(struct file *file, struct tpm_chip *chip,
       struct file_priv *priv, struct tpm_space *space)
{
 priv->chip = chip;
 priv->space = space;
 priv->response_read = 1;

 mutex_init(&priv->buffer_mutex);
 timer_setup(&priv->user_read_timer, user_reader_timeout, 0);
 INIT_WORK(&priv->timeout_work, tpm_timeout_work);
 INIT_WORK(&priv->async_work, tpm_dev_async_work);
 init_waitqueue_head(&priv->async_wait);
 file->private_data = priv;
}
