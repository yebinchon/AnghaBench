
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {TYPE_1__* device; struct request* request; } ;
struct request {int dummy; } ;
struct TYPE_2__ {int sector_size; } ;


 int blk_rq_bytes (struct request*) ;
 int blk_rq_is_passthrough (struct request*) ;

__attribute__((used)) static bool ata_check_nblocks(struct scsi_cmnd *scmd, u32 n_blocks)
{
 struct request *rq = scmd->request;
 u32 req_blocks;

 if (!blk_rq_is_passthrough(rq))
  return 1;

 req_blocks = blk_rq_bytes(rq) / scmd->device->sector_size;
 if (n_blocks > req_blocks)
  return 0;

 return 1;
}
