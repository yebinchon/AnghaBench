
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ readin_char () ;
 int readin_int () ;

void skip_tree (void) {
  if (readin_char () == 0) {
    return;
  }
  readin_int ();
  readin_int ();
  skip_tree ();
  skip_tree ();
}
