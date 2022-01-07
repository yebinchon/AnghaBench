
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int igcd (int ,int) ;
 int log_split_min ;
 int log_split_mod ;

int weights_check_vector_split (int vector_rem, int vector_mod) {


  int g = igcd (log_split_mod, vector_mod);
  if ((vector_rem - log_split_min) % g) {
    return -1;
  }
  return 0;
}
