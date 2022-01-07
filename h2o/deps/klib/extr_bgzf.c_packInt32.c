
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline void packInt32(uint8_t *buffer, uint32_t value)
{
 buffer[0] = value;
 buffer[1] = value >> 8;
 buffer[2] = value >> 16;
 buffer[3] = value >> 24;
}
