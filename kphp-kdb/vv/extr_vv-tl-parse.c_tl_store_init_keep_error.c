
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int _tl_store_init (struct connection*,long long,int) ;

int tl_store_init_keep_error (struct connection *c, long long qid) {
  return _tl_store_init (c, qid, 1);
}
