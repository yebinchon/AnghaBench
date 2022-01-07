
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GIT_SOCKET ;


 int GIT_ERROR_OS ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ SOCKET_ERROR ;
 scalar_t__ WSACleanup () ;
 int close (scalar_t__) ;
 scalar_t__ closesocket (scalar_t__) ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static int close_socket(GIT_SOCKET s)
{
 if (s == INVALID_SOCKET)
  return 0;
 return close(s);


}
