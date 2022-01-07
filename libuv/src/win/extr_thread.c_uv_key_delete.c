
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tls_index; } ;
typedef TYPE_1__ uv_key_t ;


 scalar_t__ FALSE ;
 int TLS_OUT_OF_INDEXES ;
 scalar_t__ TlsFree (int ) ;
 int abort () ;

void uv_key_delete(uv_key_t* key) {
  if (TlsFree(key->tls_index) == FALSE)
    abort();
  key->tls_index = TLS_OUT_OF_INDEXES;
}
