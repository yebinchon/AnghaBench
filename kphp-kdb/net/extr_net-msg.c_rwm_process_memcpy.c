
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,void const*,int) ;

void rwm_process_memcpy (void *extra, const void *data, int len) {
  char **d = extra;
  memcpy (*d, data, len);
  *d += len;
}
