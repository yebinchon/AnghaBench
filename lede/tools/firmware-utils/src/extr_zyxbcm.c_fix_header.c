
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct zyxbcm_tag {int * headerCRC; int * fskernelCRC; int * flashImageEnd; int * reserved1; scalar_t__* information1; } ;
struct bcm_tag {int * fskernelCRC; int kernelLength; int flashRootLength; int flashImageStart; } ;


 int ADDRESS_LEN ;
 int CRC_LEN ;
 int IMAGETAG_CRC_START ;
 int ZYX_TAGINFO1_LEN ;
 int crc32 (int ,void*,int) ;
 int htonl (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int sprintf (int *,char*,scalar_t__) ;
 scalar_t__ strtoul (int ,int *,int) ;

void fix_header(void *buf)
{
 struct bcm_tag *bcmtag = buf;
 struct zyxbcm_tag *zyxtag = buf;
 uint8_t fskernel_crc[CRC_LEN];
 uint32_t crc;
 uint64_t flash_start, rootfs_len, kernel_len;


 flash_start = strtoul(bcmtag->flashImageStart, ((void*)0), 10);
 rootfs_len = strtoul(bcmtag->flashRootLength, ((void*)0), 10);
 kernel_len = strtoul(bcmtag->kernelLength, ((void*)0), 10);
 memcpy(fskernel_crc, bcmtag->fskernelCRC, CRC_LEN);


 zyxtag->information1[ZYX_TAGINFO1_LEN - 1] = 0;
 memset(zyxtag->flashImageEnd, 0, ADDRESS_LEN);
 memset(zyxtag->fskernelCRC, 0, CRC_LEN);
 memset(zyxtag->reserved1, 0, 2);


 sprintf(zyxtag->flashImageEnd, "%lu", flash_start + rootfs_len + kernel_len);
 memcpy(zyxtag->fskernelCRC, fskernel_crc, CRC_LEN);


 crc = htonl(crc32(IMAGETAG_CRC_START, buf, 236));
 memcpy(zyxtag->headerCRC, &crc, 4);
}
