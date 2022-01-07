
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int atexit (int ) ;
 int dtoa_ctx_key ;
 int fprintf (int ,char*) ;
 scalar_t__ pthread_key_create (int *,int ) ;
 int stderr ;
 int tsd_dtoa_ctx_dtor ;
 int tsd_dtoa_ctx_fini ;

__attribute__((used)) static void tsd_dtoa_ctx_init() {
  if (pthread_key_create(&dtoa_ctx_key, tsd_dtoa_ctx_dtor) != 0) {
    fprintf(stderr, "error: cannot create thread specific key");
    abort();
  }
  atexit(tsd_dtoa_ctx_fini);
}
