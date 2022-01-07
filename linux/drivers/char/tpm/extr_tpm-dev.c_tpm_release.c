
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file_priv {TYPE_1__* chip; } ;
struct file {struct file_priv* private_data; } ;
struct TYPE_2__ {int is_open; } ;


 int clear_bit (int ,int *) ;
 int kfree (struct file_priv*) ;
 int tpm_common_release (struct file*,struct file_priv*) ;

__attribute__((used)) static int tpm_release(struct inode *inode, struct file *file)
{
 struct file_priv *priv = file->private_data;

 tpm_common_release(file, priv);
 clear_bit(0, &priv->chip->is_open);
 kfree(priv);

 return 0;
}
