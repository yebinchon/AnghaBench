
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int split_par ;
 int split_quotient ;

int split_int (int x) {
  return x >= 0 ? (x + split_par) / split_quotient : (x - split_par) / split_quotient;
}
