
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int rtc_status ;

__attribute__((used)) static int rtc_open(struct inode *inode, struct file *file)
{
 if (!atomic_dec_and_test(&rtc_status)) {
  atomic_inc(&rtc_status);
  return -EBUSY;
 }
 return 0;
}
