
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int lfsr_random(void)
{
 static unsigned int lfsr_value = 0xF00D;
 unsigned int bit;


 bit = ((lfsr_value >> 0) ^
        (lfsr_value >> 2) ^
        (lfsr_value >> 3) ^
        (lfsr_value >> 5)) & 0x0001;


 lfsr_value = (lfsr_value >> 1) | (bit << 15);

 return lfsr_value;
}
