
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;

__attribute__((used)) static int got_eagain(void) {



  return errno == EAGAIN
      || errno == EINPROGRESS



      ;

}
