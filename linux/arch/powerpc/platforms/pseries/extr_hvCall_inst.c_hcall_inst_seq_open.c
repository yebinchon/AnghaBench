
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct TYPE_2__ {int i_private; } ;


 TYPE_1__* file_inode (struct file*) ;
 int hcall_inst_seq_ops ;
 int seq_open (struct file*,int *) ;

__attribute__((used)) static int hcall_inst_seq_open(struct inode *inode, struct file *file)
{
 int rc;
 struct seq_file *seq;

 rc = seq_open(file, &hcall_inst_seq_ops);
 seq = file->private_data;
 seq->private = file_inode(file)->i_private;

 return rc;
}
