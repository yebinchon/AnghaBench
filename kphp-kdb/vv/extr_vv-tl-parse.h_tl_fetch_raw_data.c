
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fetch_raw_data ) (void*,int) ;} ;


 TYPE_1__* TL_IN_METHODS ;
 int TL_IN_POS ;
 int TL_IN_REMAINING ;
 int stub1 (void*,int) ;

__attribute__((used)) inline static void tl_fetch_raw_data (void *buf, int size) {
  TL_IN_METHODS->fetch_raw_data (buf, size);
  TL_IN_POS += size;
  TL_IN_REMAINING -= size;
}
