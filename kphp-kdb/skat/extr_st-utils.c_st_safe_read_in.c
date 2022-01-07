
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netbuffer_t ;


 int assert (int) ;
 int read_in (int *,char*,int) ;

inline void st_safe_read_in (netbuffer_t *H, char *__data, int len) {
  assert (read_in (H, __data, len) == len);
  int i;
  for (i = 0; i < len; i++) {
    if (__data[i] == 0) {
      __data[i] = ' ';
    }
  }
  __data[len] = 0;
}
