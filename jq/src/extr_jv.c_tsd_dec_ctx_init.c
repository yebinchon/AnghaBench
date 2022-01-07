
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int atexit (int ) ;
 int dec_ctx_dbl_key ;
 int dec_ctx_key ;
 int fprintf (int ,char*) ;
 int jv_mem_free ;
 scalar_t__ pthread_key_create (int *,int ) ;
 int stderr ;
 int tsd_dec_ctx_fini ;

__attribute__((used)) static void tsd_dec_ctx_init() {
  if (pthread_key_create(&dec_ctx_key, jv_mem_free) != 0) {
    fprintf(stderr, "error: cannot create thread specific key");
    abort();
  }
  if (pthread_key_create(&dec_ctx_dbl_key, jv_mem_free) != 0) {
    fprintf(stderr, "error: cannot create thread specific key");
    abort();
  }
  atexit(tsd_dec_ctx_fini);
}
