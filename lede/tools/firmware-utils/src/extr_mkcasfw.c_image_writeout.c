
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_desc {size_t file_size; size_t out_size; int csum; int padc; int file_name; } ;
struct csum_state {int dummy; } ;
typedef int FILE ;


 int CSUM_TYPE_32 ;
 int DBG (int,char*,size_t,...) ;
 int csum_get (struct csum_state*) ;
 int csum_init (struct csum_state*,int ) ;
 int image_writeout_file (int *,struct image_desc*,struct csum_state*) ;
 int write_out_padding (int *,size_t,int ,struct csum_state*) ;

int
image_writeout(FILE *outfile, struct image_desc *desc)
{
 int res;
 struct csum_state css;
 size_t padlen;

 res = 0;

 if (!desc->file_size)
  return 0;

 DBG(2, "writing image, file=%s, file_size=%d\n",
  desc->file_name, desc->file_size);

 csum_init(&css, CSUM_TYPE_32);

 res = image_writeout_file(outfile, desc, &css);
 if (res)
  return res;


 padlen = desc->out_size - desc->file_size;
 DBG(1,"padding desc, length=%zu", padlen);
 res = write_out_padding(outfile, padlen, desc->padc, &css);

 desc->csum = csum_get(&css);

 return res;
}
