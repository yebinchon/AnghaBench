
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on ;


 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int reuseaddr ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static int set_reuse_addr(int sockfd)
{
 int on = 1;

 if (!reuseaddr)
  return 0;
 return setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR,
     &on, sizeof(on));
}
