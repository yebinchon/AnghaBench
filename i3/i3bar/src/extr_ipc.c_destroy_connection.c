
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;


 int close (int ) ;
 int ev_io_stop (int ,TYPE_1__*) ;
 TYPE_1__* i3_connection ;
 int main_loop ;

void destroy_connection(void) {
    close(i3_connection->fd);
    ev_io_stop(main_loop, i3_connection);
}
