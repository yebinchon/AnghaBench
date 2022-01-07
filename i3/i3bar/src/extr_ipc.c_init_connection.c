
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ev_io ;


 int EV_READ ;
 int ev_io_init (int ,int *,int,int ) ;
 int ev_io_start (int ,int ) ;
 int got_data ;
 int i3_connection ;
 int ipc_connect (char const*) ;
 int main_loop ;
 int smalloc (int) ;
 char const* sock_path ;

int init_connection(const char *socket_path) {
    sock_path = socket_path;
    int sockfd = ipc_connect(socket_path);
    i3_connection = smalloc(sizeof(ev_io));
    ev_io_init(i3_connection, &got_data, sockfd, EV_READ);
    ev_io_start(main_loop, i3_connection);
    return 1;
}
