
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtoa_context {int dummy; } ;


 int abort () ;
 int dtoa_ctx_key ;
 int dtoa_ctx_once ;
 int fprintf (int ,char*) ;
 int jvp_dtoa_context_init (struct dtoa_context*) ;
 struct dtoa_context* malloc (int) ;
 scalar_t__ pthread_getspecific (int ) ;
 int pthread_once (int *,int ) ;
 scalar_t__ pthread_setspecific (int ,struct dtoa_context*) ;
 int stderr ;
 int tsd_dtoa_ctx_init ;

inline struct dtoa_context *tsd_dtoa_context_get() {
  pthread_once(&dtoa_ctx_once, tsd_dtoa_ctx_init);
  struct dtoa_context *ctx = (struct dtoa_context*)pthread_getspecific(dtoa_ctx_key);
  if (!ctx) {
    ctx = malloc(sizeof(struct dtoa_context));
    jvp_dtoa_context_init(ctx);
    if (pthread_setspecific(dtoa_ctx_key, ctx) != 0) {
      fprintf(stderr, "error: cannot set thread specific data");
      abort();
    }
  }
  return ctx;
}
