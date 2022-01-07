
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int created_at; struct counter* prev; } ;


 scalar_t__ Q_raw ;
 struct counter* get_counter_f (long long,int ) ;
 int get_counter_versions_raw (char*,long long) ;
 int load_counter (long long,int ,int) ;
 int sprintf (char*,char*,int) ;

int get_counter_versions (char *buffer, long long counter_id) {
  if (Q_raw) {
    return get_counter_versions_raw (buffer, counter_id);
  }
  char *ptr = buffer;
  struct counter *C = get_counter_f (counter_id, 0);
  while (C && ptr < buffer + 100000 && C->prev >= 0) {
    if (ptr > buffer) { *ptr++ = ','; }
    ptr += sprintf (ptr, "%d", C->created_at);
    C = C->prev;
  }
  if (ptr < buffer + 100000) {
    if (load_counter (counter_id, 0, 1) == -2) {
      return -2;
    }
    ptr = buffer;
    C = get_counter_f (counter_id, 0);
    while (C && ptr < buffer + 100000 && C->prev >= 0) {
      if (ptr > buffer) { *ptr++ = ','; }
      ptr += sprintf (ptr, "%d", C->created_at);
      C = C->prev;
    }
  }
  return ptr - buffer;
}
