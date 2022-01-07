
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtoa_context {int dummy; } ;


 int dtoa_ctx_key ;
 struct dtoa_context* pthread_getspecific (int ) ;
 int pthread_setspecific (int ,int *) ;
 int tsd_dtoa_ctx_dtor (struct dtoa_context*) ;

__attribute__((used)) static void tsd_dtoa_ctx_fini() {
  struct dtoa_context *ctx = pthread_getspecific(dtoa_ctx_key);
  tsd_dtoa_ctx_dtor(ctx);
  pthread_setspecific(dtoa_ctx_key, ((void*)0));
}
