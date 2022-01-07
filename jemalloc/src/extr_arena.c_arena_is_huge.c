
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ huge_arena_ind ;

bool
arena_is_huge(unsigned arena_ind) {
 if (huge_arena_ind == 0) {
  return 0;
 }
 return (arena_ind == huge_arena_ind);
}
