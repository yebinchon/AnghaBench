
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_firstlong_forward_ext () ;
 int tl_fetch_mark () ;

int default_firstlong_forward (void) {
  tl_fetch_mark ();
  return default_firstlong_forward_ext ();
}
