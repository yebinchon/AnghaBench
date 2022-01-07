
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
typedef int sin ;
typedef int h2o_socket_t ;
typedef int h2o_loop_t ;


 int EXIT_FAILURE ;
 int H2O_SOCKET_FLAG_DONT_READ ;
 int PF_INET ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,void*,int) ;
 int exit (int ) ;
 int * h2o_evloop_socket_create (int *,int,int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static h2o_socket_t *create_quic_socket(h2o_loop_t *loop)
{
    int fd;
    struct sockaddr_in sin;

    if ((fd = socket(PF_INET, SOCK_DGRAM, 0)) == -1) {
        perror("failed to create UDP socket");
        exit(EXIT_FAILURE);
    }
    memset(&sin, 0, sizeof(sin));
    if (bind(fd, (void *)&sin, sizeof(sin)) != 0) {
        perror("failed to bind bind UDP socket");
        exit(EXIT_FAILURE);
    }

    return h2o_evloop_socket_create(loop, fd, H2O_SOCKET_FLAG_DONT_READ);
}
