
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tss_t ;
typedef int * tss_dtor_t ;


 scalar_t__ TLS_OUT_OF_INDEXES ;
 scalar_t__ TlsAlloc () ;
 scalar_t__ pthread_key_create (scalar_t__*,int *) ;
 int thrd_error ;
 int thrd_success ;

int tss_create(tss_t *key, tss_dtor_t dtor)
{
  if (pthread_key_create(key, dtor) != 0)
  {
    return thrd_error;
  }

  return thrd_success;
}
