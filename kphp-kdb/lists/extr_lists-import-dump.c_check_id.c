
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 unsigned int split_mod ;
 unsigned int split_rem ;

int check_id( unsigned id ) {

  assert (id >= 0);
  return id % split_mod == split_rem;
}
