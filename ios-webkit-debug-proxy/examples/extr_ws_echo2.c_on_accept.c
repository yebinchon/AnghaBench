
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sm_t ;
typedef int sm_status ;
typedef TYPE_1__* my_sm_t ;
struct TYPE_2__ {int port; } ;


 int SM_ERROR ;
 int SM_SUCCESS ;
 void* my_new (int,int) ;

sm_status on_accept(sm_t sm, int server_fd, void *server_value,
    int fd, void **to_value) {
  int port = ((my_sm_t)server_value)->port;
  *to_value = my_new(fd, port);
  return (*to_value ? SM_SUCCESS : SM_ERROR);
}
