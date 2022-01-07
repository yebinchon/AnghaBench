
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void set_checksum(unsigned char*img, unsigned short sum)
{
  img[0x3dfffc] = sum & 0xff;
  img[0x3dfffd] = (sum>>8) & 0xff;
}
