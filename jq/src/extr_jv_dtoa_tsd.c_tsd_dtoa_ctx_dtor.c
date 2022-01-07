
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtoa_context {int dummy; } ;


 int jv_mem_free (struct dtoa_context*) ;
 int jvp_dtoa_context_free (struct dtoa_context*) ;

__attribute__((used)) static void tsd_dtoa_ctx_dtor(struct dtoa_context *ctx) {
  if (ctx) {
    jvp_dtoa_context_free(ctx);
    jv_mem_free(ctx);
  }
}
