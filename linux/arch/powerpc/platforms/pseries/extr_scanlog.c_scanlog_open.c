
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 unsigned int* scanlog_buffer ;

__attribute__((used)) static int scanlog_open(struct inode * inode, struct file * file)
{
 unsigned int *data = scanlog_buffer;

 if (data[0] != 0) {



  return -EBUSY;
 }

 data[0] = 0;

 return 0;
}
