
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashfile {scalar_t__ check_fd; int total; int name; int tp; int fd; } ;
typedef unsigned int ssize_t ;


 int die (char*,int ) ;
 int die_errno (char*,int ) ;
 int display_throughput (int ,int) ;
 scalar_t__ memcmp (void const*,unsigned char*,unsigned int) ;
 unsigned int read_in_full (scalar_t__,unsigned char*,unsigned int) ;
 int xwrite (int ,void const*,unsigned int) ;

__attribute__((used)) static void flush(struct hashfile *f, const void *buf, unsigned int count)
{
 if (0 <= f->check_fd && count) {
  unsigned char check_buffer[8192];
  ssize_t ret = read_in_full(f->check_fd, check_buffer, count);

  if (ret < 0)
   die_errno("%s: sha1 file read error", f->name);
  if (ret != count)
   die("%s: sha1 file truncated", f->name);
  if (memcmp(buf, check_buffer, count))
   die("sha1 file '%s' validation error", f->name);
 }

 for (;;) {
  int ret = xwrite(f->fd, buf, count);
  if (ret > 0) {
   f->total += ret;
   display_throughput(f->tp, f->total);
   buf = (char *) buf + ret;
   count -= ret;
   if (count)
    continue;
   return;
  }
  if (!ret)
   die("sha1 file '%s' write error. Out of diskspace", f->name);
  die_errno("sha1 file '%s' write error", f->name);
 }
}
