
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IBuff ;
 int IBuff_sort (int ,int) ;
 int IL ;
 int ocur_now ;
 int online_interval_unpack (int*,int,int) ;

__attribute__((used)) static inline int online_time_interval_unpack (int ts1, int ts2) {
  IL = (ts1 > ocur_now) ? 0 : online_interval_unpack (IBuff, ts1, ts2);
  IBuff_sort (0, IL - 1);
  IBuff[IL] = ~(-1 << 31);
  return IL;
}
