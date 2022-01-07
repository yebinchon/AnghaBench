
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;


 int MAX_UDP_SENDBUF_SIZE ;
 int SOL_SOCKET ;
 int SO_SNDBUF ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 int perror (char*) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 scalar_t__ verbosity ;
 int vkprintf (int,char*,int,int,int) ;

void maximize_sndbuf (int sfd, int max) {
  socklen_t intsize = sizeof(int);
  int last_good = 0;
  int min, avg;
  int old_size;

  if (max <= 0) {
    max = MAX_UDP_SENDBUF_SIZE;
  }


  if (getsockopt (sfd, SOL_SOCKET, SO_SNDBUF, &old_size, &intsize)) {
    if (verbosity > 0) {
      perror ("getsockopt (SO_SNDBUF)");
    }
    return;
  }


  min = last_good = old_size;
  max = MAX_UDP_SENDBUF_SIZE;

  while (min <= max) {
    avg = ((unsigned int) min + max) / 2;
    if (setsockopt (sfd, SOL_SOCKET, SO_SNDBUF, &avg, intsize) == 0) {
      last_good = avg;
      min = avg + 1;
    } else {
      max = avg - 1;
    }
  }

  vkprintf (2, "<%d send buffer was %d, now %d\n", sfd, old_size, last_good);
}
