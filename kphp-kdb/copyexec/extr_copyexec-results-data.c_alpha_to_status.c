
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int status_to_alpha (int) ;
 int strcmp (char const* const,int ) ;

int alpha_to_status (const char *const status) {
  int i;
  for (i = 0; i < 16; i++) {
    if (!strcmp (status, status_to_alpha (i))) {
      return i;
    }
  }
  return -1;
}
