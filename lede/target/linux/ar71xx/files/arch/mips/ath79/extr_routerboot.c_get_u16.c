
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;



__attribute__((used)) static u16 get_u16(void *buf)
{
 u8 *p = buf;

 return (u16) p[1] + ((u16) p[0] << 8);
}
