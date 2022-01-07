
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;


 int VPRINTK (char*) ;

__attribute__((used)) static void scsi_10_lba_len(const u8 *cdb, u64 *plba, u32 *plen)
{
 u64 lba = 0;
 u32 len = 0;

 VPRINTK("ten-byte command\n");

 lba |= ((u64)cdb[2]) << 24;
 lba |= ((u64)cdb[3]) << 16;
 lba |= ((u64)cdb[4]) << 8;
 lba |= ((u64)cdb[5]);

 len |= ((u32)cdb[7]) << 8;
 len |= ((u32)cdb[8]);

 *plba = lba;
 *plen = len;
}
