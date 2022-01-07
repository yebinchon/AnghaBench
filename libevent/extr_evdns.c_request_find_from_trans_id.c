
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct request {struct request* next; int trans_id; } ;
struct evdns_base {int dummy; } ;


 int ASSERT_LOCKED (struct evdns_base*) ;
 struct request* REQ_HEAD (struct evdns_base*,int ) ;

__attribute__((used)) static struct request *
request_find_from_trans_id(struct evdns_base *base, u16 trans_id) {
 struct request *req = REQ_HEAD(base, trans_id);
 struct request *const started_at = req;

 ASSERT_LOCKED(base);

 if (req) {
  do {
   if (req->trans_id == trans_id) return req;
   req = req->next;
  } while (req != started_at);
 }

 return ((void*)0);
}
