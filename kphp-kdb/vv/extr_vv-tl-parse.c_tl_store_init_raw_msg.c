
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int dummy; } ;


 int _tl_store_init_raw_msg (struct udp_target*,long long,int ) ;

int tl_store_init_raw_msg (struct udp_target *S, long long qid) {
  return _tl_store_init_raw_msg (S, qid, 0);
}
