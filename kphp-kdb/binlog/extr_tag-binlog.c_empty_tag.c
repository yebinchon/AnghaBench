
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* binlog_tag ;

int empty_tag (void) {
  int i;
  for (i = 0; i < 16; i++) {
    if (binlog_tag[i]) {
      return 0;
    }
  }
  return 1;
}
