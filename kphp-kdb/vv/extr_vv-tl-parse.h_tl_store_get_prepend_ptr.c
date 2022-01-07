
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* store_get_prepend_ptr ) (int) ;} ;


 TYPE_1__* TL_OUT_METHODS ;
 int TL_OUT_POS ;
 int TL_OUT_REMAINING ;
 int assert (int) ;
 void* stub1 (int) ;
 scalar_t__ tl_store_check (int) ;

__attribute__((used)) static inline void *tl_store_get_prepend_ptr (int size) {
  assert (tl_store_check (size) >= 0);
  if (!size) { return 0; }
  assert (size >= 0);
  void *x = TL_OUT_METHODS->store_get_prepend_ptr (size);
  TL_OUT_POS += size;
  TL_OUT_REMAINING -= size;
  return x;
}
