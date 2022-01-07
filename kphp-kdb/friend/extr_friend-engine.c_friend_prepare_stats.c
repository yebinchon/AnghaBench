
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_5__ {int pos; } ;
typedef TYPE_1__ stats_buffer_t ;


 int AM_GET_MEMORY_USAGE_SELF ;
 int FullVersionStr ;
 int SB_BINLOG ;
 int SB_INDEX ;
 int STATS_BUFF_SIZE ;
 int alloc_rev_friends_nodes ;
 int alloc_tree_nodes ;
 int privacy_nodes ;
 int sb_memory (TYPE_1__*,int ) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,int ,...) ;
 int stats_buff ;
 int tot_privacy_len ;
 int tot_users ;

int friend_prepare_stats (struct connection *c) {
  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF);
  SB_BINLOG;
  SB_INDEX;

  sb_printf (&sb,
    "tree_nodes\t%d\n"
    "privacy_nodes\t%d\n"
      "reverse_friends_nodes\t%d\n"
    "total_privacy_len\t%d\n"
    "memory_users\t%d\n",
    alloc_tree_nodes,
    privacy_nodes,
      alloc_rev_friends_nodes,
    tot_privacy_len,
    tot_users);

  sb_printf (&sb, "version\t%s\n", FullVersionStr);
  return sb.pos;
}
