
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct reflog_walk_info {struct commit_reflog* last_commit_reflog; } ;
struct reflog_info {int message; } ;
struct commit_reflog {int recno; TYPE_1__* reflogs; } ;
struct TYPE_2__ {struct reflog_info* items; } ;


 int strbuf_add (struct strbuf*,int ,size_t) ;
 size_t strlen (int ) ;

void get_reflog_message(struct strbuf *sb,
   struct reflog_walk_info *reflog_info)
{
 struct commit_reflog *commit_reflog = reflog_info->last_commit_reflog;
 struct reflog_info *info;
 size_t len;

 if (!commit_reflog)
  return;

 info = &commit_reflog->reflogs->items[commit_reflog->recno+1];
 len = strlen(info->message);
 if (len > 0)
  len--;
 strbuf_add(sb, info->message, len);
}
