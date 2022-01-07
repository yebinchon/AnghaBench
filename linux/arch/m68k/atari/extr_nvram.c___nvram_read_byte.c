
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char CMOS_READ (scalar_t__) ;
 scalar_t__ NVRAM_FIRST_BYTE ;

__attribute__((used)) static unsigned char __nvram_read_byte(int i)
{
 return CMOS_READ(NVRAM_FIRST_BYTE + i);
}
