
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PRIORITY ;
 int now ;
 int* sync_last ;

int get_sync_delay (void) {
  int i;
  int res = 0;

  for (i = 0; i <= MAX_PRIORITY; i++) {
    if (now - sync_last[i] > res) {
      res = now - sync_last[i];
    }
  }
  return res;
}
