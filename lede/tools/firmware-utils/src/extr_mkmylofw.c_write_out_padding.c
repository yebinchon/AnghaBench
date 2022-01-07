
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int buff ;
typedef int FILE ;


 int memset (int *,int ,size_t) ;
 scalar_t__ write_out_data (int *,int *,size_t,int *) ;

int
write_out_padding(FILE *outfile, size_t len, uint8_t padc, uint32_t *crc)
{
 uint8_t buff[512];
 size_t buflen = sizeof(buff);

 memset(buff, padc, buflen);

 while (len > 0) {
  if (len < buflen)
   buflen = len;

  if (write_out_data(outfile, buff, buflen, crc))
   return -1;

  len -= buflen;
 }

 return 0;
}
