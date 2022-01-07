
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct related_binlog {scalar_t__ status; } ;


 int classify_slave (struct related_binlog*) ;
 int update_rb_stats_copy (struct related_binlog*,scalar_t__,int) ;

__attribute__((used)) static void update_rb_stats (struct related_binlog *R) {
  if (R->status) {
    int st = classify_slave (R);
    update_rb_stats_copy (R, R->status, st);
    update_rb_stats_copy (R, R->status + 1, st);
  }
}
