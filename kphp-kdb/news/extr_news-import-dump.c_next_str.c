
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int advance_buff () ;
 int eat_whitespaces () ;
 int* rend ;
 int* rptr ;

int next_str (char *s, int max_len) {
  int i = 0;
  eat_whitespaces ();
  if (rptr == rend) {
    return -1;
  }
  while (i < max_len && (*rptr > 32) ) {
    s[i++] = *(rptr++);
    if (rptr == rend) {
      advance_buff ();
      if (rptr == rend) {
        break;
      }
    }
  }
  s[i++] = 0;
  return 0;
}
