
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int EBUSY ;
 int EPERM ;
 int FMODE_WRITE ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int keypad_available ;
 scalar_t__ keypad_buflen ;

__attribute__((used)) static int keypad_open(struct inode *inode, struct file *file)
{
 int ret;

 ret = -EBUSY;
 if (!atomic_dec_and_test(&keypad_available))
  goto fail;

 ret = -EPERM;
 if (file->f_mode & FMODE_WRITE)
  goto fail;

 keypad_buflen = 0;
 return 0;
 fail:
 atomic_inc(&keypad_available);
 return ret;
}
