
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_crc_t ;



__attribute__((used)) static int decrypt_byte(unsigned long* pkeys, const z_crc_t* pcrc_32_tab)
{
    unsigned temp;



    temp = ((unsigned)(*(pkeys+2)) & 0xffff) | 2;
    return (int)(((temp * (temp ^ 1)) >> 8) & 0xff);
}
