
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_io_hdr {char interface_id; int dxfer_len; int dxfer_direction; int flags; scalar_t__ cmd_len; int duration; int dxferp; int iovec_count; } ;
struct scsi_request {scalar_t__ retries; int cmd; } ;
struct request_queue {int dummy; } ;
struct request {struct bio* bio; } ;
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct gendisk {int dummy; } ;
struct bio {int dummy; } ;
typedef int ssize_t ;
typedef int fmode_t ;


 scalar_t__ BLK_MAX_CDB ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct request*) ;
 int PTR_ERR (struct request*) ;
 int REQ_OP_SCSI_IN ;
 int REQ_OP_SCSI_OUT ;



 int SG_FLAG_Q_AT_HEAD ;
 int blk_complete_sghdr_rq (struct request*,struct sg_io_hdr*,struct bio*) ;
 int blk_execute_rq (struct request_queue*,struct gendisk*,struct request*,int) ;
 int blk_fill_sghdr_rq (struct request_queue*,struct request*,struct sg_io_hdr*,int ) ;
 struct request* blk_get_request (struct request_queue*,int ,int ) ;
 int blk_put_request (struct request*) ;
 int blk_rq_map_user (struct request_queue*,struct request*,int *,int ,int,int ) ;
 int blk_rq_map_user_iov (struct request_queue*,struct request*,int *,struct iov_iter*,int ) ;
 int import_iovec (int ,int ,int ,int ,struct iovec**,struct iov_iter*) ;
 int iov_iter_truncate (struct iov_iter*,int) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int kfree (struct iovec*) ;
 int kzalloc (scalar_t__,int ) ;
 int queue_max_hw_sectors (struct request_queue*) ;
 int rq_data_dir (struct request*) ;
 struct scsi_request* scsi_req (struct request*) ;
 int scsi_req_free_cmd (struct scsi_request*) ;

__attribute__((used)) static int sg_io(struct request_queue *q, struct gendisk *bd_disk,
  struct sg_io_hdr *hdr, fmode_t mode)
{
 unsigned long start_time;
 ssize_t ret = 0;
 int writing = 0;
 int at_head = 0;
 struct request *rq;
 struct scsi_request *req;
 struct bio *bio;

 if (hdr->interface_id != 'S')
  return -EINVAL;

 if (hdr->dxfer_len > (queue_max_hw_sectors(q) << 9))
  return -EIO;

 if (hdr->dxfer_len)
  switch (hdr->dxfer_direction) {
  default:
   return -EINVAL;
  case 129:
   writing = 1;
   break;
  case 128:
  case 130:
   break;
  }
 if (hdr->flags & SG_FLAG_Q_AT_HEAD)
  at_head = 1;

 ret = -ENOMEM;
 rq = blk_get_request(q, writing ? REQ_OP_SCSI_OUT : REQ_OP_SCSI_IN, 0);
 if (IS_ERR(rq))
  return PTR_ERR(rq);
 req = scsi_req(rq);

 if (hdr->cmd_len > BLK_MAX_CDB) {
  req->cmd = kzalloc(hdr->cmd_len, GFP_KERNEL);
  if (!req->cmd)
   goto out_put_request;
 }

 ret = blk_fill_sghdr_rq(q, rq, hdr, mode);
 if (ret < 0)
  goto out_free_cdb;

 ret = 0;
 if (hdr->iovec_count) {
  struct iov_iter i;
  struct iovec *iov = ((void*)0);

  ret = import_iovec(rq_data_dir(rq),
       hdr->dxferp, hdr->iovec_count,
       0, &iov, &i);
  if (ret < 0)
   goto out_free_cdb;


  iov_iter_truncate(&i, hdr->dxfer_len);

  ret = blk_rq_map_user_iov(q, rq, ((void*)0), &i, GFP_KERNEL);
  kfree(iov);
 } else if (hdr->dxfer_len)
  ret = blk_rq_map_user(q, rq, ((void*)0), hdr->dxferp, hdr->dxfer_len,
          GFP_KERNEL);

 if (ret)
  goto out_free_cdb;

 bio = rq->bio;
 req->retries = 0;

 start_time = jiffies;





 blk_execute_rq(q, bd_disk, rq, at_head);

 hdr->duration = jiffies_to_msecs(jiffies - start_time);

 ret = blk_complete_sghdr_rq(rq, hdr, bio);

out_free_cdb:
 scsi_req_free_cmd(req);
out_put_request:
 blk_put_request(rq);
 return ret;
}
