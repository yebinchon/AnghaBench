
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_in_methods {int (* fetch_clear ) () ;} ;
typedef enum tl_type { ____Placeholder_tl_type } tl_type ;
struct TYPE_2__ {int * copy_through; } ;


 scalar_t__ TL_ATTEMPT_NUM ;
 int TL_COPY_THROUGH ;
 scalar_t__ TL_ERRNUM ;
 scalar_t__ TL_ERROR ;
 void* TL_IN ;
 struct tl_in_methods* TL_IN_METHODS ;
 scalar_t__ TL_IN_POS ;
 int TL_IN_REMAINING ;
 size_t TL_IN_TYPE ;
 TYPE_1__* TL_OUT_METHODS ;
 int assert (void*) ;
 int free (scalar_t__) ;
 int stub1 () ;

int __tl_fetch_init (void *in, void *in_extra, enum tl_type type, struct tl_in_methods *methods, int size) {
  if (TL_IN_METHODS && TL_IN_METHODS->fetch_clear) {
    TL_IN_METHODS->fetch_clear ();
  }
  assert (in);
  TL_IN_TYPE = type;
  TL_IN = in;
  TL_IN_REMAINING = size;
  TL_IN_POS = 0;

  TL_IN_METHODS = methods;
  TL_ATTEMPT_NUM = 0;
  if (TL_ERROR) {
    free (TL_ERROR);
    TL_ERROR = 0;
  }
  TL_ERRNUM = 0;
  TL_COPY_THROUGH = TL_OUT_METHODS ? TL_OUT_METHODS->copy_through[TL_IN_TYPE] : 0;
  return 0;
}
