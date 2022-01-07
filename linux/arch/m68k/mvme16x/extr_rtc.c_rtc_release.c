
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int atomic_inc (int *) ;
 int rtc_ready ;

__attribute__((used)) static int rtc_release(struct inode *inode, struct file *file)
{
 atomic_inc( &rtc_ready );
 return 0;
}
