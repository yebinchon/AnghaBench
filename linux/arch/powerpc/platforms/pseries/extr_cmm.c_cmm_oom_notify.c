
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 long KB2PAGES (int ) ;
 int NOTIFY_OK ;
 int cmm_dbg (char*) ;
 long cmm_free_pages (long) ;
 int loaned_pages ;
 int loaned_pages_target ;
 int oom_freed_pages ;
 int oom_kb ;

__attribute__((used)) static int cmm_oom_notify(struct notifier_block *self,
     unsigned long dummy, void *parm)
{
 unsigned long *freed = parm;
 long nr = KB2PAGES(oom_kb);

 cmm_dbg("OOM processing started\n");
 nr = cmm_free_pages(nr);
 loaned_pages_target = loaned_pages;
 *freed += KB2PAGES(oom_kb) - nr;
 oom_freed_pages += KB2PAGES(oom_kb) - nr;
 cmm_dbg("OOM processing complete\n");
 return NOTIFY_OK;
}
