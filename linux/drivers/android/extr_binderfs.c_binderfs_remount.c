
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct binderfs_info* s_fs_info; } ;
struct TYPE_2__ {int stats_mode; } ;
struct binderfs_info {TYPE_1__ mount_opts; } ;


 int EINVAL ;
 int binderfs_parse_mount_opts (char*,TYPE_1__*) ;
 int pr_err (char*) ;

__attribute__((used)) static int binderfs_remount(struct super_block *sb, int *flags, char *data)
{
 int prev_stats_mode, ret;
 struct binderfs_info *info = sb->s_fs_info;

 prev_stats_mode = info->mount_opts.stats_mode;
 ret = binderfs_parse_mount_opts(data, &info->mount_opts);
 if (ret)
  return ret;

 if (prev_stats_mode != info->mount_opts.stats_mode) {
  pr_err("Binderfs stats mode cannot be changed during a remount\n");
  info->mount_opts.stats_mode = prev_stats_mode;
  return -EINVAL;
 }

 return 0;
}
