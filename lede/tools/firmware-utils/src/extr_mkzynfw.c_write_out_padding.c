
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct csum_state {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int memset (int *,int ,size_t) ;
 scalar_t__ write_out_data (int *,int *,size_t,struct csum_state*) ;

int
write_out_padding(FILE *outfile, size_t len, uint8_t padc,
   struct csum_state *css)
{
 uint8_t buf[512];
 size_t buflen = sizeof(buf);

 memset(buf, padc, buflen);
 while (len > 0) {
  if (len < buflen)
   buflen = len;

  if (write_out_data(outfile, buf, buflen, css))
   return -1;

  len -= buflen;
 }

 return 0;
}
