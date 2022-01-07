
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int advance_buff () ;
 int assert (int) ;
 char* rend ;
 char* rptr ;

int read_int (void) {
  if (rptr == rend) {
    advance_buff ();
    assert (rptr != rend);
  }
  while ((*rptr < '0' || *rptr > '9') && *rptr != '-') {
    rptr ++;
    if (rptr == rend) {
      advance_buff ();
      assert (rptr != rend);
    }
  }
  if (rptr + 20 > rend) {
    advance_buff ();
  }
  int sign = 1;
  while (*rptr == '-') {
    sign = -sign;
    rptr ++;
  }
  int res = 0;
  while (rptr < rend && *rptr >= '0' && *rptr <= '9') {
    res = res * 10 + *rptr - '0';
    rptr ++;
  }
  if (sign < 0) {
    res = -res;
  }
  return res;
}
