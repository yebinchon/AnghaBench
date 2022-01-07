
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int socklen_t ;


 scalar_t__ AF_INET6 ;
 int NI_NUMERICHOST ;
 scalar_t__ getnameinfo (struct sockaddr*,int,char*,int,int *,int ,int ) ;

__attribute__((used)) static void Sys_SockaddrToString(char *dest, int destlen, struct sockaddr *input)
{
 socklen_t inputlen;

 if (input->sa_family == AF_INET6)
  inputlen = sizeof(struct sockaddr_in6);
 else
  inputlen = sizeof(struct sockaddr_in);

 if(getnameinfo(input, inputlen, dest, destlen, ((void*)0), 0, NI_NUMERICHOST) && destlen > 0)
  *dest = '\0';
}
