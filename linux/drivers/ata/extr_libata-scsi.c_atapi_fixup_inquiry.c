
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int dummy; } ;


 int scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 int sg_copy_from_buffer (int ,int ,int*,int) ;
 int sg_copy_to_buffer (int ,int ,int*,int) ;

__attribute__((used)) static void atapi_fixup_inquiry(struct scsi_cmnd *cmd)
{
 u8 buf[4];

 sg_copy_to_buffer(scsi_sglist(cmd), scsi_sg_count(cmd), buf, 4);
 if (buf[2] == 0) {
  buf[2] = 0x5;
  buf[3] = 0x32;
 }
 sg_copy_from_buffer(scsi_sglist(cmd), scsi_sg_count(cmd), buf, 4);
}
