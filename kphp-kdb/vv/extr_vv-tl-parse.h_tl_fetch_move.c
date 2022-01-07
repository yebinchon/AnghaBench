
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fetch_move ) (int) ;} ;


 TYPE_1__* TL_IN_METHODS ;
 int TL_IN_POS ;
 int TL_IN_REMAINING ;
 int stub1 (int) ;
 scalar_t__ tl_fetch_check (int) ;

__attribute__((used)) static inline int tl_fetch_move (int offset) {
  if (tl_fetch_check (offset) < 0) {
    return -1;
  }
  TL_IN_METHODS->fetch_move (offset);
  TL_IN_POS += offset;
  TL_IN_REMAINING -= offset;
  return offset;
}
