
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int fixed_size_llseek (struct file*,int ,int,int ) ;
 int oppanel_size ;

__attribute__((used)) static loff_t oppanel_llseek(struct file *filp, loff_t offset, int whence)
{
 return fixed_size_llseek(filp, offset, whence, oppanel_size);
}
