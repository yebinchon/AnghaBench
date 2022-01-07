
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const uint8_t ;



__attribute__((used)) static inline uint8_t read_u8(const unsigned char *buffer, size_t *pos)
{
 return buffer[(*pos)++];
}
