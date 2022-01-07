
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* windows; } ;
typedef TYPE_1__ git_mwindow_file ;
struct TYPE_7__ {scalar_t__ last_used; int inuse_cnt; struct TYPE_7__* next; } ;
typedef TYPE_2__ git_mwindow ;



__attribute__((used)) static void git_mwindow_scan_lru(
 git_mwindow_file *mwf,
 git_mwindow **lru_w,
 git_mwindow **lru_l)
{
 git_mwindow *w, *w_l;

 for (w_l = ((void*)0), w = mwf->windows; w; w = w->next) {
  if (!w->inuse_cnt) {





   if (!*lru_w || w->last_used < (*lru_w)->last_used) {
    *lru_w = w;
    *lru_l = w_l;
   }
  }
  w_l = w;
 }
}
