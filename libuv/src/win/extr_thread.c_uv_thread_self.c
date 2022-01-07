
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_thread_t ;


 int uv__current_thread_init_guard ;
 int uv__current_thread_key ;
 int uv__init_current_thread_key ;
 int uv_key_get (int *) ;
 int uv_once (int *,int ) ;

uv_thread_t uv_thread_self(void) {
  uv_once(&uv__current_thread_init_guard, uv__init_current_thread_key);
  return (uv_thread_t) uv_key_get(&uv__current_thread_key);
}
