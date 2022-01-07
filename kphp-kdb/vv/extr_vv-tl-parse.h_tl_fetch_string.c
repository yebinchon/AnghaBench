
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tl_fetch_string_data (char*,int) ;
 int tl_fetch_string_len (int) ;

__attribute__((used)) static inline int tl_fetch_string (char *buf, int max_len) {
  int l = tl_fetch_string_len (max_len);
  if (l < 0) {
    return -1;
  }
  if (tl_fetch_string_data (buf, l) < 0) {
    return -1;
  }
  return l;
}
