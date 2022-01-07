
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ka ;


 scalar_t__ ENOTSOCK ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 scalar_t__ errno ;
 int logerror (char*,int ) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static void set_keep_alive(int sockfd)
{
 int ka = 1;

 if (setsockopt(sockfd, SOL_SOCKET, SO_KEEPALIVE, &ka, sizeof(ka)) < 0) {
  if (errno != ENOTSOCK)
   logerror("unable to set SO_KEEPALIVE on socket: %s",
    strerror(errno));
 }
}
