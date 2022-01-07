
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ssize_t ;
typedef TYPE_1__* my_t ;
typedef TYPE_2__* dl_t ;
typedef int dl_status ;
struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_4__ {int fd; } ;


 int DL_ERROR ;
 int DL_SUCCESS ;
 size_t send (int,char const*,size_t,int ) ;

dl_status my_send_packet(dl_t dl, const char *buf, size_t length) {
  int fd = ((my_t)dl->state)->fd;
  ssize_t send_bytes = send(fd, buf, length, 0);
  return (send_bytes == length ? DL_SUCCESS : DL_ERROR);
}
