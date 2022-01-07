
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_key_t ;


 int abort () ;
 scalar_t__ pthread_key_delete (int ) ;

void uv_key_delete(uv_key_t* key) {
  if (pthread_key_delete(*key))
    abort();
}
