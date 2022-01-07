
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t ssize_t ;
typedef int readbuf ;
typedef size_t off_t ;


 int crc32 (int ,int *,size_t) ;
 size_t pread (int,int *,size_t,size_t) ;

uint32_t compute_crc32(uint32_t crc, off_t start, size_t compute_len, int fd)
{
 uint8_t readbuf[1024];
 ssize_t res;
 off_t offset = start;


 while (fd && (compute_len >= sizeof(readbuf))) {
  res = pread(fd, readbuf, sizeof(readbuf), offset);
  crc = crc32(crc, readbuf, res);
  compute_len = compute_len - res;
  offset += res;
 }


 if (fd && (compute_len > 0)) {
   res = pread(fd, readbuf, compute_len, offset);
   crc = crc32(crc, readbuf, res);
 }

 return crc;
}
