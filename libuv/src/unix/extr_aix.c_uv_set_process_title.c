
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_ENOMEM ;
 int init_process_title_mutex_once ;
 int process_argc ;
 char** process_argv ;
 int process_title_mutex ;
 int process_title_mutex_once ;
 char* process_title_ptr ;
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




  if (process_title_ptr != ((void*)0))
    uv__free(process_title_ptr);

  process_title_ptr = new_title;

  process_argv[0] = process_title_ptr;
  if (process_argc > 1)
     process_argv[1] = ((void*)0);

  uv_mutex_unlock(&process_title_mutex);

  return 0;
}
