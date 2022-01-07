
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_split_min ;
 int log_split_mod ;

int check_split (int n) {
  return (n > 0) ? (n % log_split_mod == log_split_min) : ((-n) % log_split_mod == log_split_min);
}
