
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GIT_SOCKET ;


 int recv (int ,void*,int,int) ;

int p_recv(GIT_SOCKET socket, void *buffer, size_t length, int flags)
{
 if ((size_t)((int)length) != length)
  return -1;

 return recv(socket, buffer, (int)length, flags);
}
