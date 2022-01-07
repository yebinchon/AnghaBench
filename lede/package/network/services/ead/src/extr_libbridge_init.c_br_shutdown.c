
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int br_socket_fd ;
 int close (int) ;

void br_shutdown(void)
{
 close(br_socket_fd);
 br_socket_fd = -1;
}
