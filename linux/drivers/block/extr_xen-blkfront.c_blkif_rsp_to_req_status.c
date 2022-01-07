
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum blk_req_status { ____Placeholder_blk_req_status } blk_req_status ;





 int REQ_DONE ;
 int REQ_EOPNOTSUPP ;
 int REQ_ERROR ;

__attribute__((used)) static enum blk_req_status blkif_rsp_to_req_status(int rsp)
{
 switch (rsp)
 {
 case 128:
  return REQ_DONE;
 case 130:
  return REQ_EOPNOTSUPP;
 case 129:

 default:
  return REQ_ERROR;
 }
}
