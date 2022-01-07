
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 long cmm_free_pages (long,void**,int *) ;
 int cmm_page_list ;
 void* cmm_pages ;
 void* cmm_pages_target ;
 int cmm_timed_page_list ;
 void* cmm_timed_pages ;
 void* cmm_timed_pages_target ;

__attribute__((used)) static int cmm_oom_notify(struct notifier_block *self,
     unsigned long dummy, void *parm)
{
 unsigned long *freed = parm;
 long nr = 256;

 nr = cmm_free_pages(nr, &cmm_timed_pages, &cmm_timed_page_list);
 if (nr > 0)
  nr = cmm_free_pages(nr, &cmm_pages, &cmm_page_list);
 cmm_pages_target = cmm_pages;
 cmm_timed_pages_target = cmm_timed_pages;
 *freed += 256 - nr;
 return NOTIFY_OK;
}
