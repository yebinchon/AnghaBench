
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u8 compute_checksum(u8 *buffer, u32 length)
{
 u8 *end = buffer + length;
 u8 sum = 0;

 while (buffer < end)
  sum += *(buffer++);

 return sum;
}
