
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_request {scalar_t__ sense_len; int cmd_len; int __cmd; int cmd; } ;


 int BLK_MAX_CDB ;
 int memset (int ,int ,int) ;

void scsi_req_init(struct scsi_request *req)
{
 memset(req->__cmd, 0, sizeof(req->__cmd));
 req->cmd = req->__cmd;
 req->cmd_len = BLK_MAX_CDB;
 req->sense_len = 0;
}
