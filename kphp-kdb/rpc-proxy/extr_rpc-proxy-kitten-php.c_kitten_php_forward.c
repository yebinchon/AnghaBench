
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct connection {TYPE_2__* fd; } ;
struct TYPE_7__ {TYPE_1__* h; } ;
struct TYPE_6__ {int new_id; } ;
struct TYPE_5__ {scalar_t__ kitten_php_delay; int qid; } ;


 TYPE_2__* CC ;
 TYPE_3__* CQ ;
 long long get_free_rpc_qid (int ) ;
 int kitten_php_delay (int ,int ) ;
 struct connection* kitten_php_get_connection (int) ;
 int kphp_query_forward_conn (struct connection*,int ,long long,int) ;
 scalar_t__ tl_fetch_error () ;
 int vkprintf (int,char*,TYPE_2__*) ;

int kitten_php_forward (void) {
  vkprintf (2, "forward: CC = %p\n", CC);
  if (tl_fetch_error ()) {
    return -1;
  }
  if (CQ->h->kitten_php_delay > 0) {
    return kitten_php_delay (0, 0);
  }
  struct connection *c = kitten_php_get_connection (1);
  if (c) {
    vkprintf (2, "Forwarding: connect = %d\n", c->fd);
    long long new_qid = get_free_rpc_qid (CQ->h->qid);
    return kphp_query_forward_conn (c, CC->new_id, new_qid, 1);
  } else {
    return -1;
  }
}
