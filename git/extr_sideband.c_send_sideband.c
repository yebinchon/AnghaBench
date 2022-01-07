
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int ssize_t ;
typedef int hdr ;


 int write_or_die (int,char const*,unsigned int) ;
 int xsnprintf (char*,int,char*,unsigned int) ;

void send_sideband(int fd, int band, const char *data, ssize_t sz, int packet_max)
{
 const char *p = data;

 while (sz) {
  unsigned n;
  char hdr[5];

  n = sz;
  if (packet_max - 5 < n)
   n = packet_max - 5;
  if (0 <= band) {
   xsnprintf(hdr, sizeof(hdr), "%04x", n + 5);
   hdr[4] = band;
   write_or_die(fd, hdr, 5);
  } else {
   xsnprintf(hdr, sizeof(hdr), "%04x", n + 4);
   write_or_die(fd, hdr, 4);
  }
  write_or_die(fd, p, n);
  p += n;
  sz -= n;
 }
}
