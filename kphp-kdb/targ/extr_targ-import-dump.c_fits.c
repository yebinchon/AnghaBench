
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int split_mod ;
 int split_rem ;

int fits (int id) {
  if (!split_mod) {
    return 1;
  }
  return id % split_mod == split_rem;
}
