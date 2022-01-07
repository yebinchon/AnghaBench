
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
typedef int tv ;
typedef void* time_t ;
struct timeval {int tv_sec; void* tv_usec; } ;
struct stat {int st_mode; } ;
struct sockaddr_un {scalar_t__* sun_path; int sun_family; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef int local ;
typedef struct sockaddr SOCKADDR ;


 int AF_INET ;
 int AF_LOCAL ;
 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int INVALID_SOCKET ;
 int IPPROTO_TCP ;
 int O_NONBLOCK ;
 int PF_LOCAL ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 size_t SUN_LEN (struct sockaddr_un*) ;
 int S_ISSOCK (int ) ;
 char* USBMUXD_FILE_PATH ;
 int USBMUXD_SOCKET_PORT ;
 int WSAGetLastError () ;
 int close (int) ;
 int closesocket (int) ;
 scalar_t__ connect (int,struct sockaddr*,size_t) ;
 int fcntl (int,int ,...) ;
 int fprintf (int ,char*,...) ;
 struct hostent* gethostbyname (char*) ;
 int htons (int ) ;
 scalar_t__ ioctlsocket (int,int ,int*) ;
 int perror (char*) ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 int strncpy (scalar_t__*,char const*,int) ;

int dl_connect(int recv_timeout) {
  int fd = -1;
  const char *filename = USBMUXD_FILE_PATH;
  struct stat fst;
  if (stat(filename, &fst) ||
      !S_ISSOCK(fst.st_mode) ||
      (fd = socket(PF_LOCAL, SOCK_STREAM, 0)) < 0) {
    return -1;
  }

  struct sockaddr_un name;
  name.sun_family = AF_LOCAL;
  strncpy(name.sun_path, filename, sizeof(name.sun_path));
  name.sun_path[sizeof(name.sun_path) - 1] = 0;
  size_t size = SUN_LEN(&name);
  if (connect(fd, (struct sockaddr *)&name, size) < 0) {
    close(fd);
    return -1;
  }

  if (recv_timeout < 0) {
    int opts = fcntl(fd, F_GETFL);
    if (!opts || fcntl(fd, F_SETFL, (opts | O_NONBLOCK)) < 0) {
      perror("Could not set socket to non-blocking");
    }
  }

  else {
    long millis = (recv_timeout > 0 ? recv_timeout : 5000);
    struct timeval tv;
    tv.tv_sec = (time_t) (millis / 1000);
    tv.tv_usec = (time_t) ((millis - (tv.tv_sec * 1000)) * 1000);
    if (setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, (char *)&tv,
          sizeof(tv))) {
      perror("Could not set socket receive timeout");
    }
  }
  return fd;
}
