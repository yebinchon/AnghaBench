
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct reflog_walk_info {struct commit_reflog* last_commit_reflog; } ;
struct reflog_info {int tz; int timestamp; } ;
struct date_mode {int dummy; } ;
struct commit_reflog {scalar_t__ selector; int recno; TYPE_1__* reflogs; } ;
struct TYPE_2__ {char* short_ref; char* ref; int nr; struct reflog_info* items; } ;


 scalar_t__ SELECTOR_DATE ;
 scalar_t__ SELECTOR_NONE ;
 char* shorten_unambiguous_ref (char*,int ) ;
 int show_date (int ,int ,struct date_mode const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,...) ;
 int strbuf_addstr (struct strbuf*,int ) ;

void get_reflog_selector(struct strbuf *sb,
    struct reflog_walk_info *reflog_info,
    const struct date_mode *dmode, int force_date,
    int shorten)
{
 struct commit_reflog *commit_reflog = reflog_info->last_commit_reflog;
 struct reflog_info *info;
 const char *printed_ref;

 if (!commit_reflog)
  return;

 if (shorten) {
  if (!commit_reflog->reflogs->short_ref)
   commit_reflog->reflogs->short_ref
    = shorten_unambiguous_ref(commit_reflog->reflogs->ref, 0);
  printed_ref = commit_reflog->reflogs->short_ref;
 } else {
  printed_ref = commit_reflog->reflogs->ref;
 }

 strbuf_addf(sb, "%s@{", printed_ref);
 if (commit_reflog->selector == SELECTOR_DATE ||
     (commit_reflog->selector == SELECTOR_NONE && force_date)) {
  info = &commit_reflog->reflogs->items[commit_reflog->recno+1];
  strbuf_addstr(sb, show_date(info->timestamp, info->tz, dmode));
 } else {
  strbuf_addf(sb, "%d", commit_reflog->reflogs->nr
       - 2 - commit_reflog->recno);
 }

 strbuf_addch(sb, '}');
}
