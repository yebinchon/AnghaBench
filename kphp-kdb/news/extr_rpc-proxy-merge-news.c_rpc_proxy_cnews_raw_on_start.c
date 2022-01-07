
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* rpc_proxy_all_news_raw_on_start (int) ;

void *rpc_proxy_cnews_raw_on_start (void) {
  return rpc_proxy_all_news_raw_on_start (1);
}
