
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtblk_req {int status; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_NOTSUPP ;
 int BLK_STS_OK ;



__attribute__((used)) static inline blk_status_t virtblk_result(struct virtblk_req *vbr)
{
 switch (vbr->status) {
 case 129:
  return BLK_STS_OK;
 case 128:
  return BLK_STS_NOTSUPP;
 default:
  return BLK_STS_IOERR;
 }
}
