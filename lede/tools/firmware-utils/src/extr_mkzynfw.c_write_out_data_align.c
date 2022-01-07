
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct csum_state {int dummy; } ;
typedef int FILE ;


 size_t ALIGN (size_t,size_t) ;
 int write_out_data (int *,int *,size_t,struct csum_state*) ;
 int write_out_padding (int *,size_t,int,struct csum_state*) ;

int
write_out_data_align(FILE *outfile, uint8_t *data, size_t len, size_t align,
  struct csum_state *css)
{
 size_t padlen;
 int res;

 res = write_out_data(outfile, data, len, css);
 if (res)
  return res;

 padlen = ALIGN(len,align) - len;
 res = write_out_padding(outfile, padlen, 0xFF, css);

 return res;
}
