
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int trans_id ;
struct evdns_base {int dummy; } ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 int evutil_secure_rng_get_bytes (int*,int) ;
 int * request_find_from_trans_id (struct evdns_base*,int) ;

__attribute__((used)) static u16
transaction_id_pick(struct evdns_base *base) {
 ASSERT_LOCKED(base);
 for (;;) {
  u16 trans_id;
  evutil_secure_rng_get_bytes(&trans_id, sizeof(trans_id));

  if (trans_id == 0xffff) continue;

  if (request_find_from_trans_id(base, trans_id) == ((void*)0))
   return trans_id;
 }
}
