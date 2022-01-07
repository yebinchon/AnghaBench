
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* wi_t ;
typedef int wi_status ;
typedef size_t ssize_t ;
typedef TYPE_2__* my_wi_t ;
struct TYPE_5__ {int fd; } ;
struct TYPE_4__ {int state; } ;


 int WI_ERROR ;
 int WI_SUCCESS ;
 size_t send (int ,void*,size_t,int ) ;

wi_status send_packet(wi_t wi, const char *packet, size_t length) {
  my_wi_t my_wi = (my_wi_t)wi->state;
  ssize_t sent_bytes = send(my_wi->fd, (void*)packet, length, 0);
  return (sent_bytes == length ? WI_SUCCESS : WI_ERROR);
}
