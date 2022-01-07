
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct related_binlog {int flags; int targets; TYPE_1__** client; } ;
struct TYPE_2__ {int flags; } ;


 int LRF_BROKEN ;
 int LRF_MASTER ;
 int RC_UPTODATE ;

int classify_slave (struct related_binlog *R) {
  if ((R->flags & LRF_MASTER)) {
    return 4;
  }
  if ((R->flags & LRF_BROKEN)) {
    return 0;
  }
  int j, r = 1;
  for (j = 0; j < R->targets; j++) {
    int w = (!R->client[j]) ? 1 : (!(R->client[j]->flags & RC_UPTODATE)) ? 2 : 3;
    if (r < w) {
      r = w;
    }
  }
  return r;
}
