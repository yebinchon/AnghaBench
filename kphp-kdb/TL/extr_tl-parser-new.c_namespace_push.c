
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int namespace_level ;
 int tl_clear_fields () ;
 int tl_clear_vars () ;

void namespace_push (void) {
  namespace_level ++;
  assert (namespace_level < 10);
  tl_clear_vars ();
  tl_clear_fields ();
}
