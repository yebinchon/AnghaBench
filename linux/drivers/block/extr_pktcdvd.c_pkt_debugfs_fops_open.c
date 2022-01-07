
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int pkt_debugfs_seq_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int pkt_debugfs_fops_open(struct inode *inode, struct file *file)
{
 return single_open(file, pkt_debugfs_seq_show, inode->i_private);
}
