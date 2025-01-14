
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_4__ {scalar_t__ max; scalar_t__ stats_mode; } ;
struct binderfs_info {TYPE_2__ mount_opts; } ;
struct TYPE_3__ {struct binderfs_info* s_fs_info; } ;


 scalar_t__ BINDERFS_MAX_MINOR ;
 scalar_t__ STATS_GLOBAL ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int binderfs_show_mount_opts(struct seq_file *seq, struct dentry *root)
{
 struct binderfs_info *info;

 info = root->d_sb->s_fs_info;
 if (info->mount_opts.max <= BINDERFS_MAX_MINOR)
  seq_printf(seq, ",max=%d", info->mount_opts.max);
 if (info->mount_opts.stats_mode == STATS_GLOBAL)
  seq_printf(seq, ",stats=global");

 return 0;
}
