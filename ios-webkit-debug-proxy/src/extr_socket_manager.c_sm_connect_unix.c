
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int name ;


 int AF_UNIX ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int PF_UNIX ;
 int SOCK_STREAM ;
 int S_ISSOCK (int ) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int errno ;
 int fcntl (int,int ,...) ;
 int fprintf (int ,char*,char const*,char*) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 char* strerror (int ) ;
 int strncpy (int ,char const*,int) ;

int sm_connect_unix(const char *filename) {
  struct sockaddr_un name;
  int sfd = -1;
  struct stat fst;

  if (stat(filename, &fst) != 0 || !S_ISSOCK(fst.st_mode)) {
    fprintf(stderr, "File '%s' is not a socket: %s\n", filename,
        strerror(errno));
    return -1;
  }

  if ((sfd = socket(PF_UNIX, SOCK_STREAM, 0)) < 0) {
    perror("create socket failed");
    return -1;
  }

  int opts = fcntl(sfd, F_GETFL);
  if (fcntl(sfd, F_SETFL, (opts | O_NONBLOCK)) < 0) {
    perror("failed to set socket to non-blocking");
    return -1;
  }

  name.sun_family = AF_UNIX;
  strncpy(name.sun_path, filename, sizeof(name.sun_path) - 1);

  if (connect(sfd, (struct sockaddr*)&name, sizeof(name)) < 0) {
    close(sfd);
    perror("connect failed");
    return -1;
  }

  return sfd;
}
