
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int single_open (struct file*,int ,int ) ;
 int tlb_seq_show ;

__attribute__((used)) static int tlb_debugfs_open(struct inode *inode, struct file *file)
{
 return single_open(file, tlb_seq_show, inode->i_private);
}
