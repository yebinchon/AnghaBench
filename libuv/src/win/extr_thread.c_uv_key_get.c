
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tls_index; } ;
typedef TYPE_1__ uv_key_t ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 void* TlsGetValue (int ) ;
 int abort () ;

void* uv_key_get(uv_key_t* key) {
  void* value;

  value = TlsGetValue(key->tls_index);
  if (value == ((void*)0))
    if (GetLastError() != ERROR_SUCCESS)
      abort();

  return value;
}
