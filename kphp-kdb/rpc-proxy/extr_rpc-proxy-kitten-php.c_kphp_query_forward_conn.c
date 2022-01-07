
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tl_query_header {long long qid; double custom_timeout; long long actor_id; int real_op; } ;
struct connection {int dummy; } ;
struct TYPE_4__ {int (* create_rpc_query ) (long long) ;} ;
struct TYPE_6__ {long long id; TYPE_1__ methods; int forwarded_queries; int timeout; } ;
struct TYPE_5__ {struct tl_query_header* h; } ;


 TYPE_3__* CC ;
 TYPE_2__* CQ ;
 int assert (int) ;
 int forwarded_queries ;
 int stub1 (long long) ;
 int tl_copy_through (int ,int) ;
 scalar_t__ tl_fetch_error () ;
 int tl_fetch_unread () ;
 int tl_store_end_ext (int ) ;
 int tl_store_header (struct tl_query_header*) ;
 int tl_store_init (struct connection*,long long) ;
 int vkprintf (int,char*,long long,int ) ;

int kphp_query_forward_conn (struct connection *c, long long new_actor_id, long long new_qid, int advance) {
  vkprintf (1, "default_query_forward: CC->id = %lld, CC->timeout = %lf\n", CC->id, CC->timeout);
  assert (c);
  if (tl_fetch_error ()) {
    return -1;
  }
  CC->forwarded_queries ++;
  forwarded_queries ++;
  long long qid = CQ->h->qid;
  double save_timeout = CQ->h->custom_timeout;
  CQ->h->custom_timeout *= 0.9;

  tl_store_init (c, new_qid);

  struct tl_query_header *h = CQ->h;
  assert (h->actor_id == CC->id);
  h->qid = new_qid;
  h->actor_id = new_actor_id;
  tl_store_header (h);
  h->qid = qid;
  h->actor_id = CC->id;
  h->custom_timeout = save_timeout;

  tl_copy_through (tl_fetch_unread (), advance);
  CC->methods.create_rpc_query (new_qid);

  tl_store_end_ext (CQ->h->real_op);
  return 0;
}
