
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** arenas; } ;
struct TYPE_3__ {int initialized; } ;


 size_t UINT_MAX ;
 size_t arenas_i2a_impl (size_t,int,int) ;
 TYPE_2__* ctl_arenas ;

__attribute__((used)) static bool
ctl_arenas_i_verify(size_t i) {
 size_t a = arenas_i2a_impl(i, 1, 1);
 if (a == UINT_MAX || !ctl_arenas->arenas[a]->initialized) {
  return 1;
 }

 return 0;
}
