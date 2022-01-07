
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int PRINTK_2 (int ,char*,unsigned int) ;
 int PRINTK_3 (int ,char*,struct inode*,struct file*) ;
 int TRACE_MWAVE ;

__attribute__((used)) static int mwave_open(struct inode *inode, struct file *file)
{
 unsigned int retval = 0;

 PRINTK_3(TRACE_MWAVE,
  "mwavedd::mwave_open, entry inode %p file %p\n",
   inode, file);
 PRINTK_2(TRACE_MWAVE,
  "mwavedd::mwave_open, exit return retval %x\n", retval);

 return retval;
}
