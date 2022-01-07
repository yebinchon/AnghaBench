
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int interested ;
 int set_int_add (int *,int) ;

void add_to_interested (int *user_id) {
  set_int_add (&interested, *user_id);
}
