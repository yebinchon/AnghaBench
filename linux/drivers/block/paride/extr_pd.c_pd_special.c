
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_req {int (* func ) (int ) ;} ;
typedef enum action { ____Placeholder_action } action ;


 struct pd_req* blk_mq_rq_to_pdu (int ) ;
 int pd_current ;
 int pd_req ;
 int stub1 (int ) ;

__attribute__((used)) static enum action pd_special(void)
{
 struct pd_req *req = blk_mq_rq_to_pdu(pd_req);

 return req->func(pd_current);
}
