
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; int str; } ;


 int init_process_title_mutex_once ;
 TYPE_1__ process_title ;
 int process_title_mutex ;
 int process_title_mutex_once ;
 int strncpy (int ,char const*,scalar_t__) ;
 int uv__set_process_title (char const*) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_once (int *,int ) ;

int uv_set_process_title(const char* title) {
  uv_once(&process_title_mutex_once, init_process_title_mutex_once);
  uv_mutex_lock(&process_title_mutex);

  if (process_title.len != 0) {

    strncpy(process_title.str, title, process_title.len);
    uv__set_process_title(title);
  }

  uv_mutex_unlock(&process_title_mutex);

  return 0;
}
