
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_io_hdr {int status; int sb_len_wr; scalar_t__ sbp; scalar_t__ mx_sb_len; int resid; int info; int driver_status; int host_status; int masked_status; int msg_status; } ;
struct scsi_request {int result; int sense; scalar_t__ sense_len; int resid_len; } ;
struct request {int dummy; } ;
struct bio {int dummy; } ;


 int EFAULT ;
 int SG_INFO_CHECK ;
 int blk_rq_unmap_user (struct bio*) ;
 int copy_to_user (scalar_t__,int ,int) ;
 int driver_byte (int) ;
 int host_byte (int) ;
 int min (unsigned int,scalar_t__) ;
 int msg_byte (int) ;
 struct scsi_request* scsi_req (struct request*) ;
 int status_byte (int) ;

__attribute__((used)) static int blk_complete_sghdr_rq(struct request *rq, struct sg_io_hdr *hdr,
     struct bio *bio)
{
 struct scsi_request *req = scsi_req(rq);
 int r, ret = 0;




 hdr->status = req->result & 0xff;
 hdr->masked_status = status_byte(req->result);
 hdr->msg_status = msg_byte(req->result);
 hdr->host_status = host_byte(req->result);
 hdr->driver_status = driver_byte(req->result);
 hdr->info = 0;
 if (hdr->masked_status || hdr->host_status || hdr->driver_status)
  hdr->info |= SG_INFO_CHECK;
 hdr->resid = req->resid_len;
 hdr->sb_len_wr = 0;

 if (req->sense_len && hdr->sbp) {
  int len = min((unsigned int) hdr->mx_sb_len, req->sense_len);

  if (!copy_to_user(hdr->sbp, req->sense, len))
   hdr->sb_len_wr = len;
  else
   ret = -EFAULT;
 }

 r = blk_rq_unmap_user(bio);
 if (!ret)
  ret = r;

 return ret;
}
