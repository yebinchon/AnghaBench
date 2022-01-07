
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtip_port {int dummy; } ;
struct host_to_dev_fis {int type; int opts; int features; int sect_count; int lba_mid; int lba_hi; int device; int command; } ;
typedef int dma_addr_t ;


 int ATA_CMD_SMART ;
 int ATA_DEVICE_OBS ;
 int ATA_SECT_SIZE ;
 int memset (struct host_to_dev_fis*,int ,int) ;
 int mtip_exec_internal_command (struct mtip_port*,struct host_to_dev_fis*,int,int ,int ,int ,int) ;

__attribute__((used)) static int mtip_get_smart_data(struct mtip_port *port, u8 *buffer,
     dma_addr_t buffer_dma)
{
 struct host_to_dev_fis fis;

 memset(&fis, 0, sizeof(struct host_to_dev_fis));
 fis.type = 0x27;
 fis.opts = 1 << 7;
 fis.command = ATA_CMD_SMART;
 fis.features = 0xD0;
 fis.sect_count = 1;
 fis.lba_mid = 0x4F;
 fis.lba_hi = 0xC2;
 fis.device = ATA_DEVICE_OBS;

 return mtip_exec_internal_command(port,
     &fis,
     5,
     buffer_dma,
     ATA_SECT_SIZE,
     0,
     15000);
}
