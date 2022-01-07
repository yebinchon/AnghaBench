
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void packInt16(uint8_t *buffer, uint16_t value)
{
 buffer[0] = value;
 buffer[1] = value >> 8;
}
