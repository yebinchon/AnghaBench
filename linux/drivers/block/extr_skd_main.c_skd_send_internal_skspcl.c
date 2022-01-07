
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ state; int id; struct fit_sg_descriptor* sksg_list; } ;
struct skd_special_context {unsigned char* data_buf; TYPE_2__ req; TYPE_1__* msg_buf; } ;
struct TYPE_6__ {void* sg_list_len_bytes; int tag; } ;
struct skd_scsi_request {int* cdb; TYPE_3__ hdr; } ;
struct skd_device {int dummy; } ;
struct fit_sg_descriptor {int byte_count; } ;
struct TYPE_4__ {struct skd_scsi_request* scsi; } ;





 int SKD_ASSERT (char*) ;
 int SKD_N_READ_CAP_BYTES ;
 scalar_t__ SKD_REQ_STATE_BUSY ;
 scalar_t__ SKD_REQ_STATE_IDLE ;



 int WR_BUF_SIZE ;
 void* cpu_to_be32 (int) ;
 int memset (int*,int ,int) ;
 int skd_send_special_fitmsg (struct skd_device*,struct skd_special_context*) ;

__attribute__((used)) static void skd_send_internal_skspcl(struct skd_device *skdev,
         struct skd_special_context *skspcl,
         u8 opcode)
{
 struct fit_sg_descriptor *sgd = &skspcl->req.sksg_list[0];
 struct skd_scsi_request *scsi;
 unsigned char *buf = skspcl->data_buf;
 int i;

 if (skspcl->req.state != SKD_REQ_STATE_IDLE)




  return;

 skspcl->req.state = SKD_REQ_STATE_BUSY;

 scsi = &skspcl->msg_buf->scsi[0];
 scsi->hdr.tag = skspcl->req.id;

 memset(scsi->cdb, 0, sizeof(scsi->cdb));

 switch (opcode) {
 case 129:
  scsi->cdb[0] = 129;
  sgd->byte_count = 0;
  scsi->hdr.sg_list_len_bytes = 0;
  break;

 case 131:
  scsi->cdb[0] = 131;
  sgd->byte_count = SKD_N_READ_CAP_BYTES;
  scsi->hdr.sg_list_len_bytes = cpu_to_be32(sgd->byte_count);
  break;

 case 133:
  scsi->cdb[0] = 133;
  scsi->cdb[1] = 0x01;
  scsi->cdb[2] = 0x80;
  scsi->cdb[4] = 0x10;
  sgd->byte_count = 16;
  scsi->hdr.sg_list_len_bytes = cpu_to_be32(sgd->byte_count);
  break;

 case 130:
  scsi->cdb[0] = 130;
  sgd->byte_count = 0;
  scsi->hdr.sg_list_len_bytes = 0;
  break;

 case 128:
  scsi->cdb[0] = 128;
  scsi->cdb[1] = 0x02;
  scsi->cdb[7] = (WR_BUF_SIZE & 0xFF00) >> 8;
  scsi->cdb[8] = WR_BUF_SIZE & 0xFF;
  sgd->byte_count = WR_BUF_SIZE;
  scsi->hdr.sg_list_len_bytes = cpu_to_be32(sgd->byte_count);

  for (i = 0; i < sgd->byte_count; i++)
   buf[i] = i & 0xFF;
  break;

 case 132:
  scsi->cdb[0] = 132;
  scsi->cdb[1] = 0x02;
  scsi->cdb[7] = (WR_BUF_SIZE & 0xFF00) >> 8;
  scsi->cdb[8] = WR_BUF_SIZE & 0xFF;
  sgd->byte_count = WR_BUF_SIZE;
  scsi->hdr.sg_list_len_bytes = cpu_to_be32(sgd->byte_count);
  memset(skspcl->data_buf, 0, sgd->byte_count);
  break;

 default:
  SKD_ASSERT("Don't know what to send");
  return;

 }
 skd_send_special_fitmsg(skdev, skspcl);
}
