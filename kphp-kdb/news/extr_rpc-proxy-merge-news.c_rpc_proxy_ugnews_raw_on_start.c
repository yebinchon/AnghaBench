
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ schema_num; } ;


 TYPE_1__* CC ;
 scalar_t__ G_NEWS_SCHEMA_NUM ;
 void* rpc_proxy_all_news_raw_on_start (int) ;

void *rpc_proxy_ugnews_raw_on_start (void) {
  return rpc_proxy_all_news_raw_on_start (CC->schema_num == G_NEWS_SCHEMA_NUM ? -1 : 0);
}
