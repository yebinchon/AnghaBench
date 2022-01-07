
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
 int SB_PRINT_QUERIES (int ) ;
 int STATS_BUFF_SIZE ;
 int dyn_update_stats () ;
 int get_queries ;
 int sb_memory (TYPE_1__*,int ) ;
 int sb_prepare (TYPE_1__*,struct connection*,int ,int ) ;
 int sb_printf (TYPE_1__*,char*,int ) ;
 int stats_buff ;

int random_prepare_stats (struct connection *c) {
  dyn_update_stats ();
  stats_buffer_t sb;
  sb_prepare (&sb, c, stats_buff, STATS_BUFF_SIZE);
  sb_memory (&sb, AM_GET_MEMORY_USAGE_SELF);
  sb_printf (&sb, "version\t%s\n", FullVersionStr);
  SB_PRINT_QUERIES(get_queries);
  return sb.pos;
}
