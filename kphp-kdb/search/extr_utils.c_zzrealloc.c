
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int) ;
 int zzfree (void*,int) ;
 void* zzmalloc (int) ;

void *zzrealloc (void *p, int old_len, int new_len) {
  void *tmp = zzmalloc (new_len);
  if (!tmp) {
    return 0;
  }
  int t = old_len;
  if (old_len > new_len) {
    t = old_len;
  }
  memcpy (tmp, p, t);
  if (p) {
    zzfree (p, old_len);
  }
  return tmp;
}
