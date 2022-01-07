
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int UPDC32 (char,int) ;

uint32_t crc32buf(char *buf, size_t len)
{
 uint32_t crc;

 crc = 0xFFFFFFFF;

 for (; len; --len, ++buf)
  crc = UPDC32(*buf, crc);

 return crc;
}
