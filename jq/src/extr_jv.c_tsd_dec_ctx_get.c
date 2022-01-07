
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pthread_key_t ;
struct TYPE_5__ {int digits; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ decContext ;


 int BIN64_DEC_PRECISION ;
 int DEC_MAX_DIGITS ;
 int DEC_MAX_EMAX ;
 int DEC_MIN_EMAX ;
 int DEC_ROUND_HALF_UP ;
 int abort () ;
 int dec_ctx_dbl_key ;
 int dec_ctx_key ;
 int dec_ctx_once ;
 int fprintf (int ,char*) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ pthread_getspecific (int ) ;
 int pthread_once (int *,int ) ;
 scalar_t__ pthread_setspecific (int ,TYPE_1__*) ;
 int stderr ;
 int tsd_dec_ctx_init ;

__attribute__((used)) static decContext* tsd_dec_ctx_get(pthread_key_t *key) {
  pthread_once(&dec_ctx_once, tsd_dec_ctx_init);
  decContext *ctx = (decContext*)pthread_getspecific(*key);
  if (ctx) {
    return ctx;
  }

  decContext _ctx = {
      0,
      DEC_MAX_EMAX,
      DEC_MIN_EMAX,
      DEC_ROUND_HALF_UP,
      0,
      0,
      0,
    };
  if (key == &dec_ctx_key) {
    _ctx.digits = DEC_MAX_DIGITS;
  } else if (key == &dec_ctx_dbl_key) {
    _ctx.digits = BIN64_DEC_PRECISION;
  }

  ctx = malloc(sizeof(decContext));
  if (ctx) {
    *ctx = _ctx;
    if (pthread_setspecific(*key, ctx) != 0) {
      fprintf(stderr, "error: cannot store thread specific data");
      abort();
    }
  }
  return ctx;
}
