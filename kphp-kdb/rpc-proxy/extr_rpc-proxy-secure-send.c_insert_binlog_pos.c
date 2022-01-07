
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binlog_pos {long long pos; } ;


 int assert (int) ;
 int binlog_pos_tree ;
 struct binlog_pos get_cur_binlog_position (int) ;
 int lrand48 () ;
 int tree_insert_binlog_pos (int ,struct binlog_pos,int ) ;

void insert_binlog_pos (long long pos, int binlog_replay) {
  struct binlog_pos t;
  t = get_cur_binlog_position (binlog_replay);
  assert (t.pos == pos);
  binlog_pos_tree = tree_insert_binlog_pos (binlog_pos_tree, t, lrand48 ());
}
