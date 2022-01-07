
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tls_index; } ;
typedef TYPE_1__ uv_key_t ;


 scalar_t__ FALSE ;
 scalar_t__ TlsSetValue (int ,void*) ;
 int abort () ;

void uv_key_set(uv_key_t* key, void* value) {
  if (TlsSetValue(key->tls_index, value) == FALSE)
    abort();
}
