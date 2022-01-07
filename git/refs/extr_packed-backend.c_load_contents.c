
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; } ;
struct snapshot {int mmapped; int buf; scalar_t__ eof; int start; TYPE_1__* refs; int validity; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int path; } ;


 scalar_t__ ENOENT ;
 int MAP_PRIVATE ;
 scalar_t__ MMAP_NONE ;
 int O_RDONLY ;
 int PROT_READ ;
 size_t SMALL_FILE_SIZE ;
 int close (int) ;
 int die_errno (char*,int ) ;
 scalar_t__ errno ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ mmap_strategy ;
 int open (int ,int ) ;
 size_t read_in_full (int,int ,size_t) ;
 int stat_validity_update (int *,int) ;
 int xmalloc (size_t) ;
 int xmmap (int *,size_t,int ,int ,int,int ) ;
 size_t xsize_t (int ) ;

__attribute__((used)) static int load_contents(struct snapshot *snapshot)
{
 int fd;
 struct stat st;
 size_t size;
 ssize_t bytes_read;

 fd = open(snapshot->refs->path, O_RDONLY);
 if (fd < 0) {
  if (errno == ENOENT) {







   return 0;
  } else {
   die_errno("couldn't read %s", snapshot->refs->path);
  }
 }

 stat_validity_update(&snapshot->validity, fd);

 if (fstat(fd, &st) < 0)
  die_errno("couldn't stat %s", snapshot->refs->path);
 size = xsize_t(st.st_size);

 if (!size) {
  close(fd);
  return 0;
 } else if (mmap_strategy == MMAP_NONE || size <= SMALL_FILE_SIZE) {
  snapshot->buf = xmalloc(size);
  bytes_read = read_in_full(fd, snapshot->buf, size);
  if (bytes_read < 0 || bytes_read != size)
   die_errno("couldn't read %s", snapshot->refs->path);
  snapshot->mmapped = 0;
 } else {
  snapshot->buf = xmmap(((void*)0), size, PROT_READ, MAP_PRIVATE, fd, 0);
  snapshot->mmapped = 1;
 }
 close(fd);

 snapshot->start = snapshot->buf;
 snapshot->eof = snapshot->buf + size;

 return 1;
}
