
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int dummy; } ;


 int GIT_COLOR_NORMAL ;
 int Q_ (char*,char*,int) ;
 int for_each_reflog_ent (char*,int ,int*) ;
 int stash_count_refs ;
 int status_printf_ln (struct wt_status*,int ,int ,int) ;

__attribute__((used)) static void wt_longstatus_print_stash_summary(struct wt_status *s)
{
 int stash_count = 0;

 for_each_reflog_ent("refs/stash", stash_count_refs, &stash_count);
 if (stash_count > 0)
  status_printf_ln(s, GIT_COLOR_NORMAL,
     Q_("Your stash currently has %d entry",
        "Your stash currently has %d entries", stash_count),
     stash_count);
}
