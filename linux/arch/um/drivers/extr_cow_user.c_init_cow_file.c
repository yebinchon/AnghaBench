
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;
struct cow_header_v3 {int dummy; } ;


 int COW_VERSION ;
 int EINVAL ;
 int ROUND_UP (int,int) ;
 int cow_printf (char*,...) ;
 int cow_seek_file (int,unsigned long long) ;
 int cow_sizes (int ,unsigned long long,int,int,int,unsigned long*,int*) ;
 int cow_write_file (int,char*,int) ;
 int write_cow_header (char*,int,char*,int,int,unsigned long long*) ;

int init_cow_file(int fd, char *cow_file, char *backing_file, int sectorsize,
    int alignment, int *bitmap_offset_out,
    unsigned long *bitmap_len_out, int *data_offset_out)
{
 unsigned long long size, offset;
 char zero = 0;
 int err;

 err = write_cow_header(cow_file, fd, backing_file, sectorsize,
          alignment, &size);
 if (err)
  goto out;

 *bitmap_offset_out = ROUND_UP(sizeof(struct cow_header_v3), alignment);
 cow_sizes(COW_VERSION, size, sectorsize, alignment, *bitmap_offset_out,
    bitmap_len_out, data_offset_out);

 offset = *data_offset_out + size - sizeof(zero);
 err = cow_seek_file(fd, offset);
 if (err < 0) {
  cow_printf("cow bitmap lseek failed : err = %d\n", -err);
  goto out;
 }






 err = cow_write_file(fd, &zero, sizeof(zero));
 if (err != sizeof(zero)) {
  cow_printf("Write of bitmap to new COW file '%s' failed, "
      "err = %d\n", cow_file, -err);
  if (err >= 0)
   err = -EINVAL;
  goto out;
 }

 return 0;
 out:
 return err;
}
