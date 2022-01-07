
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct bt_bmc {int dummy; } ;


 int atomic_dec (int *) ;
 struct bt_bmc* file_bt_bmc (struct file*) ;
 int open_count ;
 int set_b_busy (struct bt_bmc*) ;

__attribute__((used)) static int bt_bmc_release(struct inode *inode, struct file *file)
{
 struct bt_bmc *bt_bmc = file_bt_bmc(file);

 atomic_dec(&open_count);
 set_b_busy(bt_bmc);
 return 0;
}
