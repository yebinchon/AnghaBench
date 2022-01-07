
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {TYPE_3__* windows; } ;
typedef TYPE_1__ git_mwindow_file ;
struct TYPE_16__ {size_t length; int * contents; } ;
struct TYPE_14__ {int open_windows; int mapped; TYPE_5__ windowfiles; } ;
typedef TYPE_2__ git_mwindow_ctl ;
struct TYPE_12__ {scalar_t__ len; } ;
struct TYPE_15__ {scalar_t__ inuse_cnt; struct TYPE_15__* next; TYPE_10__ window_map; } ;
typedef TYPE_3__ git_mwindow ;


 int assert (int) ;
 int git__free (TYPE_3__*) ;
 int git_futils_mmap_free (TYPE_10__*) ;
 int git_vector_free (TYPE_5__*) ;
 TYPE_1__* git_vector_get (TYPE_5__*,size_t) ;
 int git_vector_remove (TYPE_5__*,size_t) ;
 TYPE_2__ mem_ctl ;

void git_mwindow_free_all_locked(git_mwindow_file *mwf)
{
 git_mwindow_ctl *ctl = &mem_ctl;
 size_t i;




 for (i = 0; i < ctl->windowfiles.length; ++i){
  if (git_vector_get(&ctl->windowfiles, i) == mwf) {
   git_vector_remove(&ctl->windowfiles, i);
   break;
  }
 }

 if (ctl->windowfiles.length == 0) {
  git_vector_free(&ctl->windowfiles);
  ctl->windowfiles.contents = ((void*)0);
 }

 while (mwf->windows) {
  git_mwindow *w = mwf->windows;
  assert(w->inuse_cnt == 0);

  ctl->mapped -= w->window_map.len;
  ctl->open_windows--;

  git_futils_mmap_free(&w->window_map);

  mwf->windows = w->next;
  git__free(w);
 }
}
