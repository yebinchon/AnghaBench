
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int H_SIZE ;
 int NI_NAMEREQD ;
 char* alloc_string (char*) ;
 char* gai_strerror (int) ;
 int getnameinfo (struct sockaddr const*,int ,char*,int,int *,int ,int) ;

__attribute__((used)) static char *
reverse_host (const struct sockaddr *a, socklen_t length)
{
  char h[H_SIZE];
  int flags, st;

  flags = NI_NAMEREQD;
  st = getnameinfo (a, length, h, H_SIZE, ((void*)0), 0, flags);
  if (!st)
    return alloc_string (h);
  return alloc_string (gai_strerror (st));
}
