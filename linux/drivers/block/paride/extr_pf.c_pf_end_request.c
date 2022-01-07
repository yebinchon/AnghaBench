
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blk_status_t ;


 int __blk_mq_end_request (int *,int ) ;
 int blk_rq_cur_bytes (int *) ;
 int blk_update_request (int *,int ,int ) ;
 int * pf_req ;

__attribute__((used)) static void pf_end_request(blk_status_t err)
{
 if (!pf_req)
  return;
 if (!blk_update_request(pf_req, err, blk_rq_cur_bytes(pf_req))) {
  __blk_mq_end_request(pf_req, err);
  pf_req = ((void*)0);
 }
}
