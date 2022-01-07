
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arena_t ;


 int arena_has_default_hooks (int *) ;
 scalar_t__ opt_thp ;
 scalar_t__ thp_mode_always ;

__attribute__((used)) static bool
extent_need_manual_zero(arena_t *arena) {





 return (!arena_has_default_hooks(arena) ||
  (opt_thp == thp_mode_always));
}
