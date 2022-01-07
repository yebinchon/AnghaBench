
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (void*) ;
 int memcpy (void*,void*,int) ;
 int zzfree (void*,int) ;
 void* zzmalloc0 (int) ;

void *zzrealloc0 (void *p, int old_len, int new_len) {
  void *tmp = zzmalloc0 (new_len);
  assert (tmp);
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
