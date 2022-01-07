
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_key_t ;


 int UV__ERR (int ) ;
 int pthread_key_create (int *,int *) ;

int uv_key_create(uv_key_t* key) {
  return UV__ERR(pthread_key_create(key, ((void*)0)));
}
