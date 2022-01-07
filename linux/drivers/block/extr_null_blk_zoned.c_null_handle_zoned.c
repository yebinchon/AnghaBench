
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_cmd {int dummy; } ;
typedef int sector_t ;
typedef enum req_opf { ____Placeholder_req_opf } req_opf ;
typedef int blk_status_t ;


 int BLK_STS_OK ;



 int null_zone_reset (struct nullb_cmd*,int ) ;
 int null_zone_write (struct nullb_cmd*,int ,int ) ;

blk_status_t null_handle_zoned(struct nullb_cmd *cmd, enum req_opf op,
          sector_t sector, sector_t nr_sectors)
{
 switch (op) {
 case 130:
  return null_zone_write(cmd, sector, nr_sectors);
 case 129:
 case 128:
  return null_zone_reset(cmd, sector);
 default:
  return BLK_STS_OK;
 }
}
