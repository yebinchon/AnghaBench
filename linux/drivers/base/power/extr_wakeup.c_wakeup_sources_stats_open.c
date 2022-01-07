
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int seq_open_private (struct file*,int *,int) ;
 int wakeup_sources_stats_seq_ops ;

__attribute__((used)) static int wakeup_sources_stats_open(struct inode *inode, struct file *file)
{
 return seq_open_private(file, &wakeup_sources_stats_seq_ops, sizeof(int));
}
