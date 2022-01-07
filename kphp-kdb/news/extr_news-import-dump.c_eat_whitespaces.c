
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int advance_buff () ;
 int* rend ;
 int* rptr ;

void eat_whitespaces (void) {
  while (1) {
    if (rptr == rend) {
      advance_buff ();
      if (rptr == rend) {
        return;
      }
    }
    if (*rptr > 32) {
      break;
    }
    rptr++;
  }
}
