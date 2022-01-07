
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {char* file; } ;
struct ubd {char* file; TYPE_1__ cow; } ;
typedef int __u64 ;
typedef int __u32 ;


 int EINVAL ;
 int OPENFLAGS () ;
 int file_reader ;
 int of_read (int ) ;
 int os_close_file (int) ;
 int os_file_size (char*,int *) ;
 int os_open_file (char*,int ,int ) ;
 int read_cow_header (int ,int*,int *,char**,int *,unsigned long long*,int*,int *,int*) ;

__attribute__((used)) static inline int ubd_file_size(struct ubd *ubd_dev, __u64 *size_out)
{
 char *file;
 int fd;
 int err;

 __u32 version;
 __u32 align;
 char *backing_file;
 time_t mtime;
 unsigned long long size;
 int sector_size;
 int bitmap_offset;

 if (ubd_dev->file && ubd_dev->cow.file) {
  file = ubd_dev->cow.file;

  goto out;
 }

 fd = os_open_file(ubd_dev->file, of_read(OPENFLAGS()), 0);
 if (fd < 0)
  return fd;

 err = read_cow_header(file_reader, &fd, &version, &backing_file, &mtime, &size, &sector_size, &align, &bitmap_offset);

 os_close_file(fd);

 if(err == -EINVAL)
  file = ubd_dev->file;
 else
  file = backing_file;

out:
 return os_file_size(file, size_out);
}
