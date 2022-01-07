
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fetch_lookup ) (int*,int) ;} ;


 TYPE_1__* TL_IN_METHODS ;
 int stub1 (int*,int) ;
 scalar_t__ tl_fetch_check (int) ;

__attribute__((used)) static inline int tl_fetch_lookup_int (void) {
  if (tl_fetch_check (4) < 0) {
    return -1;
  }
  int x;
  TL_IN_METHODS->fetch_lookup (&x, 4);
  return x;
}
