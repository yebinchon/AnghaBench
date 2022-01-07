
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 long dyn_cur ;
 long dyn_top ;

void dyn_assert_free (long size) {
  assert (dyn_top - dyn_cur >= size);
}
