
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct bt_bmc {int dummy; } ;


 int EBUSY ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int clr_b_busy (struct bt_bmc*) ;
 struct bt_bmc* file_bt_bmc (struct file*) ;
 int open_count ;

__attribute__((used)) static int bt_bmc_open(struct inode *inode, struct file *file)
{
 struct bt_bmc *bt_bmc = file_bt_bmc(file);

 if (atomic_inc_return(&open_count) == 1) {
  clr_b_busy(bt_bmc);
  return 0;
 }

 atomic_dec(&open_count);
 return -EBUSY;
}
