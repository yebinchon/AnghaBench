
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct related_binlog {int flags; } ;


 struct related_binlog* LR ;
 int LRF_MASTER ;
 size_t classify_slave (struct related_binlog*) ;
 int local_rbs ;
 int memset (int*,int ,int) ;
 int update_rb_stats (struct related_binlog*) ;

void compute_slaves_stats (int slave_cnt[4]) {
  int i;
  memset (slave_cnt, 0, 16);
  for (i = 0; i < local_rbs; i++) {
    struct related_binlog *R = &LR[i];
    if (!(R->flags & LRF_MASTER)) {
      slave_cnt[classify_slave (R)]++;
    }
    update_rb_stats (R);
  }
}
