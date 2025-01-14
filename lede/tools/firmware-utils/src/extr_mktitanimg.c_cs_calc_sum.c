
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uintmax_t ;
typedef int FILE ;


 int BUFLEN ;
 int SEEK_SET ;
 unsigned long* crctab ;
 scalar_t__ ferror (int *) ;
 size_t fread (unsigned char*,int,int,int *) ;
 int fseek (int *,int ,int ) ;

int cs_calc_sum(FILE *fp, unsigned long *res, int tagged)
{
 unsigned char buf[BUFLEN];
 unsigned long crc = 0;
 uintmax_t length = 0;
 size_t bytes_read;

 fseek(fp, 0, SEEK_SET);

 while((bytes_read = fread(buf, 1, BUFLEN, fp)) > 0)
 {
  unsigned char *cp = buf;

  if(length + bytes_read < length)
   return 0;

  if(bytes_read != BUFLEN && tagged)
   bytes_read -= 8;

  length += bytes_read;
  while(bytes_read--)
   crc =(crc << 8) ^ crctab[((crc >> 24) ^ *cp++) & 0xFF];
 }

 if(ferror(fp))
  return 0;

 for(; length; length >>= 8)
  crc =(crc << 8) ^ crctab[((crc >> 24) ^ length) & 0xFF];

 crc = ~crc & 0xFFFFFFFF;

 *res = crc;

 return 1;
}
