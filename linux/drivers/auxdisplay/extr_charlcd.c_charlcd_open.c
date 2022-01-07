
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct charlcd_priv {int must_clear; int lcd; } ;


 int EBUSY ;
 int EPERM ;
 int FMODE_READ ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int charlcd_available ;
 int charlcd_clear_display (int *) ;
 struct charlcd_priv* charlcd_to_priv (int ) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int the_charlcd ;

__attribute__((used)) static int charlcd_open(struct inode *inode, struct file *file)
{
 struct charlcd_priv *priv = charlcd_to_priv(the_charlcd);
 int ret;

 ret = -EBUSY;
 if (!atomic_dec_and_test(&charlcd_available))
  goto fail;

 ret = -EPERM;
 if (file->f_mode & FMODE_READ)
  goto fail;

 if (priv->must_clear) {
  charlcd_clear_display(&priv->lcd);
  priv->must_clear = 0;
 }
 return nonseekable_open(inode, file);

 fail:
 atomic_inc(&charlcd_available);
 return ret;
}
