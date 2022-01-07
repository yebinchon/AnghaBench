
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* store_read_back_nondestruct ) (char*,int) ;} ;


 TYPE_1__* TL_OUT_METHODS ;
 int TL_OUT_POS ;
 int assert (int) ;
 int stub1 (char*,int) ;

__attribute__((used)) static inline int tl_store_read_back_nondestruct (char *buf, int size) {
  assert (size <= TL_OUT_POS);
  TL_OUT_METHODS->store_read_back_nondestruct (buf, size);
  return size;
}
