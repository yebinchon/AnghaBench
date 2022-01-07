
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ namespace_level ;

void namespace_pop (void) {
  namespace_level --;
  assert (namespace_level >= 0);
}
