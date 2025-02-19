
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct reflog_walk_info {struct commit_reflog* last_commit_reflog; } ;
struct reflog_info {char* message; char* email; } ;
struct date_mode {int dummy; } ;
struct commit_reflog {int recno; TYPE_1__* reflogs; } ;
struct TYPE_2__ {struct reflog_info* items; } ;


 struct strbuf STRBUF_INIT ;
 int get_reflog_selector (struct strbuf*,struct reflog_walk_info*,struct date_mode const*,int,int ) ;
 int printf (char*,char*,char*,...) ;
 int strbuf_release (struct strbuf*) ;

void show_reflog_message(struct reflog_walk_info *reflog_info, int oneline,
    const struct date_mode *dmode, int force_date)
{
 if (reflog_info && reflog_info->last_commit_reflog) {
  struct commit_reflog *commit_reflog = reflog_info->last_commit_reflog;
  struct reflog_info *info;
  struct strbuf selector = STRBUF_INIT;

  info = &commit_reflog->reflogs->items[commit_reflog->recno+1];
  get_reflog_selector(&selector, reflog_info, dmode, force_date, 0);
  if (oneline) {
   printf("%s: %s", selector.buf, info->message);
  }
  else {
   printf("Reflog: %s (%s)\nReflog message: %s",
          selector.buf, info->email, info->message);
  }

  strbuf_release(&selector);
 }
}
