
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* exact_strdup (char*,int) ;
 char* idx_rptr ;
 int preload_string () ;

char *load_string (void) {
  int len = preload_string ();
  if (!len) {
    ++idx_rptr;
    return 0;
  }
  char *str = idx_rptr;
  idx_rptr += len + 1;

  return exact_strdup (str, len);
}
