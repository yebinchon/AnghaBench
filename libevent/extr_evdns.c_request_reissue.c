
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int transmit_me; scalar_t__ tx_count; int reissue_count; struct nameserver const* const ns; int base; } ;
typedef struct nameserver const nameserver ;


 int ASSERT_LOCKED (int ) ;
 int ASSERT_VALID_REQUEST (struct request*) ;
 int nameserver_pick (int ) ;
 int request_swap_ns (struct request*,int ) ;

__attribute__((used)) static int
request_reissue(struct request *req) {
 const struct nameserver *const last_ns = req->ns;
 ASSERT_LOCKED(req->base);
 ASSERT_VALID_REQUEST(req);



 request_swap_ns(req, nameserver_pick(req->base));
 if (req->ns == last_ns) {



  return 1;
 }

 req->reissue_count++;
 req->tx_count = 0;
 req->transmit_me = 1;

 return 0;
}
