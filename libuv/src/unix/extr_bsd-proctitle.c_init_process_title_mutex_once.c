
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int process_title_mutex ;
 scalar_t__ uv_mutex_init (int *) ;

__attribute__((used)) static void init_process_title_mutex_once(void) {
  if (uv_mutex_init(&process_title_mutex))
    abort();
}
