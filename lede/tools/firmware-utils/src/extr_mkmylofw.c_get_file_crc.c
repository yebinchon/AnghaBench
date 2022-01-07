
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
struct fw_block {int flags; size_t size; int crc; int name; } ;
typedef int buf ;
typedef int FILE ;


 int BLOCK_FLAG_HAVEHDR ;
 int FILE_BUF_LEN ;
 int errmsg (int,char*,int ) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (int *,size_t,int,int *) ;
 int update_crc (int *,size_t,int *) ;

int
get_file_crc(struct fw_block *ff)
{
 FILE *f;
 uint8_t buf[FILE_BUF_LEN];
 uint32_t readlen = sizeof(buf);
 int res = -1;
 size_t len;

 if ((ff->flags & BLOCK_FLAG_HAVEHDR) == 0) {
  res = 0;
  goto out;
 }

 errno = 0;
 f = fopen(ff->name,"r");
 if (errno) {
  errmsg(1,"unable to open file %s", ff->name);
  goto out;
 }

 ff->crc = 0;
 len = ff->size;
 while (len > 0) {
  if (len < readlen)
   readlen = len;

  errno = 0;
  fread(buf, readlen, 1, f);
  if (errno) {
   errmsg(1,"unable to read from file %s", ff->name);
   goto out_close;
  }

  update_crc(buf, readlen, &ff->crc);
  len -= readlen;
 }

 res = 0;

out_close:
 fclose(f);
out:
 return res;
}
