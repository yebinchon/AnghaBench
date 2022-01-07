
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_user_lr_setup {int WLE; int RLE; } ;
struct opal_dev {int dummy; } ;


 int generic_lr_enable_disable (struct opal_dev*,int *,int,int,int ,int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static inline int enable_global_lr(struct opal_dev *dev, u8 *uid,
       struct opal_user_lr_setup *setup)
{
 int err;

 err = generic_lr_enable_disable(dev, uid, !!setup->RLE, !!setup->WLE,
     0, 0);
 if (err)
  pr_debug("Failed to create enable global lr command\n");

 return err;
}
