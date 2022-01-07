
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_off_t ;
struct TYPE_12__ {TYPE_4__* windows; int size; int fd; } ;
typedef TYPE_2__ git_mwindow_file ;
struct TYPE_13__ {int used_ctr; } ;
typedef TYPE_3__ git_mwindow_ctl ;
struct TYPE_11__ {int len; scalar_t__ data; } ;
struct TYPE_14__ {int offset; TYPE_1__ window_map; int inuse_cnt; scalar_t__ last_used; struct TYPE_14__* next; } ;
typedef TYPE_4__ git_mwindow ;


 int GIT_ERROR_THREAD ;
 int git__mwindow_mutex ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;
 scalar_t__ git_mwindow_contains (TYPE_4__*,int) ;
 TYPE_3__ mem_ctl ;
 TYPE_4__* new_window (TYPE_2__*,int ,int ,int) ;

unsigned char *git_mwindow_open(
 git_mwindow_file *mwf,
 git_mwindow **cursor,
 git_off_t offset,
 size_t extra,
 unsigned int *left)
{
 git_mwindow_ctl *ctl = &mem_ctl;
 git_mwindow *w = *cursor;

 if (git_mutex_lock(&git__mwindow_mutex)) {
  git_error_set(GIT_ERROR_THREAD, "unable to lock mwindow mutex");
  return ((void*)0);
 }

 if (!w || !(git_mwindow_contains(w, offset) && git_mwindow_contains(w, offset + extra))) {
  if (w) {
   w->inuse_cnt--;
  }

  for (w = mwf->windows; w; w = w->next) {
   if (git_mwindow_contains(w, offset) &&
    git_mwindow_contains(w, offset + extra))
    break;
  }





  if (!w) {
   w = new_window(mwf, mwf->fd, mwf->size, offset);
   if (w == ((void*)0)) {
    git_mutex_unlock(&git__mwindow_mutex);
    return ((void*)0);
   }
   w->next = mwf->windows;
   mwf->windows = w;
  }
 }


 if (w != *cursor) {
  w->last_used = ctl->used_ctr++;
  w->inuse_cnt++;
  *cursor = w;
 }

 offset -= w->offset;

 if (left)
  *left = (unsigned int)(w->window_map.len - offset);

 git_mutex_unlock(&git__mwindow_mutex);
 return (unsigned char *) w->window_map.data + offset;
}
