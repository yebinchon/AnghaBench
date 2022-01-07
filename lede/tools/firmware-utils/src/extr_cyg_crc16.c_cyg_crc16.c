
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cyg_uint16 ;


 int* crc16_tab ;

cyg_uint16
cyg_crc16(unsigned char *buf, int len)
{
    int i;
    cyg_uint16 cksum;

    cksum = 0;
    for (i = 0; i < len; i++) {
        cksum = crc16_tab[((cksum>>8) ^ *buf++) & 0xFF] ^ (cksum << 8);
    }
    return cksum;
}
