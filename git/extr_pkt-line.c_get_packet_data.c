
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int BUG (char*) ;
 int PACKET_READ_GENTLE_ON_EOF ;
 int _ (char*) ;
 int die (int ) ;
 int die_errno (int ) ;
 int memcpy (void*,char*,size_t) ;
 size_t read_in_full (int,void*,unsigned int) ;

__attribute__((used)) static int get_packet_data(int fd, char **src_buf, size_t *src_size,
      void *dst, unsigned size, int options)
{
 ssize_t ret;

 if (fd >= 0 && src_buf && *src_buf)
  BUG("multiple sources given to packet_read");


 if (src_buf && *src_buf) {
  ret = size < *src_size ? size : *src_size;
  memcpy(dst, *src_buf, ret);
  *src_buf += ret;
  *src_size -= ret;
 } else {
  ret = read_in_full(fd, dst, size);
  if (ret < 0)
   die_errno(_("read error"));
 }


 if (ret != size) {
  if (options & PACKET_READ_GENTLE_ON_EOF)
   return -1;

  die(_("the remote end hung up unexpectedly"));
 }

 return ret;
}
