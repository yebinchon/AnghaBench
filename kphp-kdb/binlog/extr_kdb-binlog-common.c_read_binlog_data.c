
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ log_last_endw; scalar_t__ log_wptr; int log_start; } ;


 TYPE_1__ W ;
 int assert (int) ;
 int memcpy (char*,int,int) ;

int read_binlog_data (char *buf, int len) {
  int xlen = W.log_last_endw <= W.log_wptr ? W.log_wptr - W.log_start : W.log_wptr - W.log_start + W.log_last_endw - W.log_wptr;
  if (xlen > len) {
    xlen = len;
  }
  len = xlen;
  if (W.log_wptr - W.log_start >= len) {
    memcpy (buf, W.log_wptr - len, len);
    return xlen;
  } else {
    len -= W.log_wptr - W.log_start;
    memcpy (buf + len, W.log_start, W.log_wptr - W.log_start);
  }
  if (W.log_last_endw) {
    if (W.log_last_endw > W.log_wptr) {
      if (W.log_last_endw - W.log_wptr >= len) {
        memcpy (buf, W.log_last_endw - len, len);
        return xlen;
      } else {
        len -= W.log_last_endw - W.log_wptr;
        memcpy (buf, W.log_wptr, W.log_last_endw - W.log_wptr);
      }
    }
  }
  assert (!len);
  return xlen;
}
