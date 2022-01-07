
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int unpackInt16(const uint8_t *buffer)
{
 return buffer[0] | buffer[1] << 8;
}
