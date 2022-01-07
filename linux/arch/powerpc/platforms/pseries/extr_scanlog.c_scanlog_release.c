
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 unsigned int* scanlog_buffer ;

__attribute__((used)) static int scanlog_release(struct inode * inode, struct file * file)
{
 unsigned int *data = scanlog_buffer;

 data[0] = 0;
 return 0;
}
