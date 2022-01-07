
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* store_clear ) () ;} ;


 scalar_t__ TL_OUT ;
 TYPE_1__* TL_OUT_METHODS ;
 int TL_OUT_TYPE ;
 int assert (scalar_t__) ;
 int stub1 () ;
 int tl_type_none ;

__attribute__((used)) static inline int tl_store_clear (void) {
  assert (TL_OUT);
  TL_OUT_METHODS->store_clear ();
  TL_OUT = 0;
  TL_OUT_TYPE = tl_type_none;
  return 0;
}
