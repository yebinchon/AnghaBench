
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;


 int AF_UNIX ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int errno ;
 int socket (int ,int,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int tr2_dst_try_uds_connect(const char *path, int sock_type, int *out_fd)
{
 int fd;
 struct sockaddr_un sa;

 fd = socket(AF_UNIX, sock_type, 0);
 if (fd == -1)
  return errno;

 sa.sun_family = AF_UNIX;
 strlcpy(sa.sun_path, path, sizeof(sa.sun_path));

 if (connect(fd, (struct sockaddr *)&sa, sizeof(sa)) == -1) {
  int e = errno;
  close(fd);
  return e;
 }

 *out_fd = fd;
 return 0;
}
