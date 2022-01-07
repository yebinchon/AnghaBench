
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int timestamp_t ;
struct reflog_walk_info {struct commit_reflog* last_commit_reflog; } ;
struct reflog_info {int timestamp; } ;
struct commit_reflog {int recno; TYPE_1__* reflogs; } ;
struct TYPE_2__ {struct reflog_info* items; } ;



timestamp_t get_reflog_timestamp(struct reflog_walk_info *reflog_info)
{
 struct commit_reflog *commit_reflog = reflog_info->last_commit_reflog;
 struct reflog_info *info;

 if (!commit_reflog)
  return 0;

 info = &commit_reflog->reflogs->items[commit_reflog->recno+1];
 return info->timestamp;
}
