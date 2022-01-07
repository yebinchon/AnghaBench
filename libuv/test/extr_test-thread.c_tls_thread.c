
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int tls_key ;
 void* uv_key_get (int *) ;
 int uv_key_set (int *,void*) ;

__attribute__((used)) static void tls_thread(void* arg) {
  ASSERT(((void*)0) == uv_key_get(&tls_key));
  uv_key_set(&tls_key, arg);
  ASSERT(arg == uv_key_get(&tls_key));
  uv_key_set(&tls_key, ((void*)0));
  ASSERT(((void*)0) == uv_key_get(&tls_key));
}
