
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int stream_open (struct inode*,struct file*) ;

__attribute__((used)) static int ds1620_open(struct inode *inode, struct file *file)
{
 return stream_open(inode, file);
}
