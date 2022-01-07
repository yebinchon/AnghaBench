
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_mwindow_file ;
struct TYPE_6__ {scalar_t__ length; } ;
struct TYPE_5__ {TYPE_3__ windowfiles; } ;
typedef TYPE_1__ git_mwindow_ctl ;


 int GIT_ERROR_THREAD ;
 int git__mwindow_mutex ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_mutex_lock (int *) ;
 int git_mutex_unlock (int *) ;
 scalar_t__ git_vector_init (TYPE_3__*,int,int *) ;
 int git_vector_insert (TYPE_3__*,int *) ;
 TYPE_1__ mem_ctl ;

int git_mwindow_file_register(git_mwindow_file *mwf)
{
 git_mwindow_ctl *ctl = &mem_ctl;
 int ret;

 if (git_mutex_lock(&git__mwindow_mutex)) {
  git_error_set(GIT_ERROR_THREAD, "unable to lock mwindow mutex");
  return -1;
 }

 if (ctl->windowfiles.length == 0 &&
     git_vector_init(&ctl->windowfiles, 8, ((void*)0)) < 0) {
  git_mutex_unlock(&git__mwindow_mutex);
  return -1;
 }

 ret = git_vector_insert(&ctl->windowfiles, mwf);
 git_mutex_unlock(&git__mwindow_mutex);

 return ret;
}
