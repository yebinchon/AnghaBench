
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* store_read_back ) (scalar_t__) ;} ;


 int TL_OUT ;
 TYPE_1__* TL_OUT_METHODS ;
 scalar_t__ TL_OUT_POS ;
 int TL_OUT_REMAINING ;
 int assert (int ) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static inline int tl_store_clean (void) {
  assert (TL_OUT);
  TL_OUT_METHODS->store_read_back (TL_OUT_POS);
  TL_OUT_REMAINING += TL_OUT_POS;
  TL_OUT_POS = 0;
  return 0;
}
