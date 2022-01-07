
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_ENOMEM ;
 int init_process_title_mutex_once ;
 char* process_title ;
 int process_title_mutex ;
 int process_title_mutex_once ;
 int setproctitle (char*,char const*) ;
 int uv__free (char*) ;
 char* uv__strdup (char const*) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_once (int *,int ) ;

int uv_set_process_title(const char* title) {
  char* new_title;

  new_title = uv__strdup(title);
  if (new_title == ((void*)0))
    return UV_ENOMEM;

  uv_once(&process_title_mutex_once, init_process_title_mutex_once);
  uv_mutex_lock(&process_title_mutex);

  uv__free(process_title);
  process_title = new_title;
  setproctitle("%s", title);

  uv_mutex_unlock(&process_title_mutex);

  return 0;
}
