
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
rol32(uint32_t word, int shift)
{
 return (word << shift) | (word >> (32 - shift));
}
