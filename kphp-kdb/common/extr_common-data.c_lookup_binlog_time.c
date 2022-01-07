
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long pos; } ;


 int BINLOGPOS_QUEUE_SIZE ;
 TYPE_1__* fbd_data ;
 int fbd_rptr ;
 int fbd_wptr ;
 int lookup_binlog_binsearch (long long,int,int) ;

long long lookup_binlog_time (long long binlog_time) {
  int res;
  if (fbd_rptr > fbd_wptr) {
    res = lookup_binlog_binsearch (binlog_time, fbd_rptr, BINLOGPOS_QUEUE_SIZE);
    if (res < BINLOGPOS_QUEUE_SIZE) {
      return fbd_data[res].pos;
    }
    res = lookup_binlog_binsearch (binlog_time, 0, fbd_wptr);
  } else {
    res = lookup_binlog_binsearch (binlog_time, fbd_rptr, fbd_wptr);
  }
  return res == fbd_wptr ? 0 : fbd_data[res].pos;
}
