
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int SOCK_STREAM ;
 int die_errno (char*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int unix_stream_socket(void)
{
 int fd = socket(AF_UNIX, SOCK_STREAM, 0);
 if (fd < 0)
  die_errno("unable to create socket");
 return fd;
}
