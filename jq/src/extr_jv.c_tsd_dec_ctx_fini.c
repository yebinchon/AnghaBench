
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dec_ctx_dbl_key ;
 int dec_ctx_key ;
 int jv_mem_free (int ) ;
 int pthread_getspecific (int ) ;
 int pthread_setspecific (int ,int *) ;

__attribute__((used)) static void tsd_dec_ctx_fini() {
  jv_mem_free(pthread_getspecific(dec_ctx_key));
  jv_mem_free(pthread_getspecific(dec_ctx_dbl_key));
  pthread_setspecific(dec_ctx_key, ((void*)0));
  pthread_setspecific(dec_ctx_dbl_key, ((void*)0));
}
