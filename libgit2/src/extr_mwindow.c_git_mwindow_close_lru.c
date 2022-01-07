
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


struct TYPE_14__ {TYPE_3__* windows; } ;
typedef TYPE_1__ git_mwindow_file ;
struct TYPE_17__ {size_t length; } ;
struct TYPE_15__ {int open_windows; int mapped; TYPE_6__ windowfiles; } ;
typedef TYPE_2__ git_mwindow_ctl ;
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_16__ {struct TYPE_16__* next; TYPE_11__ window_map; } ;
typedef TYPE_3__ git_mwindow ;


 int GIT_ERROR_OS ;
 int git__free (TYPE_3__*) ;
 int git_error_set (int ,char*) ;
 int git_futils_mmap_free (TYPE_11__*) ;
 int git_mwindow_scan_lru (TYPE_1__*,TYPE_3__**,TYPE_3__**) ;
 TYPE_1__* git_vector_get (TYPE_6__*,size_t) ;
 TYPE_2__ mem_ctl ;

__attribute__((used)) static int git_mwindow_close_lru(git_mwindow_file *mwf)
{
 git_mwindow_ctl *ctl = &mem_ctl;
 size_t i;
 git_mwindow *lru_w = ((void*)0), *lru_l = ((void*)0), **list = &mwf->windows;


 if(mwf->windows)
  git_mwindow_scan_lru(mwf, &lru_w, &lru_l);

 for (i = 0; i < ctl->windowfiles.length; ++i) {
  git_mwindow *last = lru_w;
  git_mwindow_file *cur = git_vector_get(&ctl->windowfiles, i);
  git_mwindow_scan_lru(cur, &lru_w, &lru_l);
  if (lru_w != last)
   list = &cur->windows;
 }

 if (!lru_w) {
  git_error_set(GIT_ERROR_OS, "failed to close memory window; couldn't find LRU");
  return -1;
 }

 ctl->mapped -= lru_w->window_map.len;
 git_futils_mmap_free(&lru_w->window_map);

 if (lru_l)
  lru_l->next = lru_w->next;
 else
  *list = lru_w->next;

 git__free(lru_w);
 ctl->open_windows--;

 return 0;
}
