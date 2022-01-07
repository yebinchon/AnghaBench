
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int default_tuple_forward_ext (int) ;
 int tl_fetch_mark () ;

int default_tuple_forward (int size) {
  tl_fetch_mark ();
  return default_tuple_forward_ext (size);
}
