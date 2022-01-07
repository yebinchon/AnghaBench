
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int tot_buckets; } ;


 TYPE_1__* CC ;
 int mcp_stats_buffer ;
 int return_one_key (struct connection*,char const*,int ,int ) ;
 int sprintf (int ,char*,int) ;

int mcp_get_cluster_size (struct connection *c, const char *key) {
  return return_one_key (c, key, mcp_stats_buffer, sprintf (mcp_stats_buffer, "%d", CC->tot_buckets));
}
