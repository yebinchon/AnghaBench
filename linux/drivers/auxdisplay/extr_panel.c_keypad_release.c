
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int atomic_inc (int *) ;
 int keypad_available ;

__attribute__((used)) static int keypad_release(struct inode *inode, struct file *file)
{
 atomic_inc(&keypad_available);
 return 0;
}
