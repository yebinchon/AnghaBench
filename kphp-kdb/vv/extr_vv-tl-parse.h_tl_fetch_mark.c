
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fetch_mark ) () ;} ;


 TYPE_1__* TL_IN_METHODS ;
 int stub1 () ;

__attribute__((used)) static inline void tl_fetch_mark (void) {
  TL_IN_METHODS->fetch_mark ();
}
