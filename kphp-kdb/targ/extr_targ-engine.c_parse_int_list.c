
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_USERS ;
 long* R ;
 long strtol (char*,char**,int) ;

int parse_int_list (char *text, int text_len) {
  int i = 0;
  long x;
  char *ptr = text, *ptr_e = text + text_len, *ptr_n;
  while (ptr < ptr_e) {
    if (i && *ptr++ != ',') {
      return -1;
    }
    R[i++] = x = strtol (ptr, &ptr_n, 10);
    if (ptr == ptr_n || i == MAX_USERS || x <= 0 || x >= 0x7fffffff) {
      return -1;
    }
    ptr = ptr_n;
  }
  return i;
}
