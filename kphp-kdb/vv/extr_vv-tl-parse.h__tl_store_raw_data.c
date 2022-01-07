
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* store_raw_data ) (void const*,int) ;} ;


 TYPE_1__* TL_OUT_METHODS ;
 int TL_OUT_POS ;
 int TL_OUT_REMAINING ;
 int stub1 (void const*,int) ;

__attribute__((used)) static inline void _tl_store_raw_data (const void *buf, int len) {
  TL_OUT_METHODS->store_raw_data (buf, len);
  TL_OUT_POS += len;
  TL_OUT_REMAINING -= len;
}
