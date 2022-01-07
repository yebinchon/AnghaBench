
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binlog_wait_query {scalar_t__ wait_pos; long long num; } ;



long long binlog_wait_query_cmp (struct binlog_wait_query *a, struct binlog_wait_query *b) {
  if (a->wait_pos != b->wait_pos) {
    return a->wait_pos - b->wait_pos;
  }
  return a->num - b->num;
}
