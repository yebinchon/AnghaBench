
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inuse_cnt; } ;
typedef TYPE_1__ git_mwindow ;


 int GIT_ERROR_THREAD ;
 int git__mwindow_mutex ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;

void git_mwindow_close(git_mwindow **window)
{
 git_mwindow *w = *window;
 if (w) {
  if (git_mutex_lock(&git__mwindow_mutex)) {
   git_error_set(GIT_ERROR_THREAD, "unable to lock mwindow mutex");
   return;
  }

  w->inuse_cnt--;
  git_mutex_unlock(&git__mwindow_mutex);
  *window = ((void*)0);
 }
}
