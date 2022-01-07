
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_mwindow_file ;


 int GIT_ERROR_THREAD ;
 int git__mwindow_mutex ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;
 int git_mwindow_free_all_locked (int *) ;

void git_mwindow_free_all(git_mwindow_file *mwf)
{
 if (git_mutex_lock(&git__mwindow_mutex)) {
  git_error_set(GIT_ERROR_THREAD, "unable to lock mwindow mutex");
  return;
 }

 git_mwindow_free_all_locked(mwf);

 git_mutex_unlock(&git__mwindow_mutex);
}
