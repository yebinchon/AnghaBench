
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buffer ;


 int COPY_READ_ERROR ;
 int COPY_WRITE_ERROR ;
 scalar_t__ write_in_full (int,char*,scalar_t__) ;
 scalar_t__ xread (int,char*,int) ;

int copy_fd(int ifd, int ofd)
{
 while (1) {
  char buffer[8192];
  ssize_t len = xread(ifd, buffer, sizeof(buffer));
  if (!len)
   break;
  if (len < 0)
   return COPY_READ_ERROR;
  if (write_in_full(ofd, buffer, len) < 0)
   return COPY_WRITE_ERROR;
 }
 return 0;
}
