
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tl_buf_add_string (char*,int) ;
 int tl_buf_add_string_nospace (char*,int) ;

void tl_buf_add_string_q (char *s, int len, int x) {
  if (x) {
    tl_buf_add_string (s, len);
  } else {
    tl_buf_add_string_nospace (s, len);
  }
}
