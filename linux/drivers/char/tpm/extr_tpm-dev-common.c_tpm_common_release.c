
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_priv {scalar_t__ response_length; int timeout_work; int user_read_timer; int async_work; } ;
struct file {int * private_data; } ;


 int del_singleshot_timer_sync (int *) ;
 int flush_work (int *) ;

void tpm_common_release(struct file *file, struct file_priv *priv)
{
 flush_work(&priv->async_work);
 del_singleshot_timer_sync(&priv->user_read_timer);
 flush_work(&priv->timeout_work);
 file->private_data = ((void*)0);
 priv->response_length = 0;
}
