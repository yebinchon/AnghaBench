
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int FILE ;


 int errmsg (int,char*) ;
 scalar_t__ errno ;
 int fwrite (int *,size_t,int,int *) ;
 int update_crc (int *,size_t,int *) ;

int
write_out_data(FILE *outfile, uint8_t *data, size_t len, uint32_t *crc)
{
 errno = 0;

 fwrite(data, len, 1, outfile);
 if (errno) {
  errmsg(1,"unable to write output file");
  return -1;
 }

 if (crc) {
  update_crc(data, len, crc);
 }

 return 0;
}
