
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int yoml_t ;
typedef int tfo_queues ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int h2o_configurator_command_t ;
typedef int flag ;
struct TYPE_2__ {int tfo_queues; } ;


 int AF_INET6 ;
 int H2O_SOMAXCONN ;
 int IPPROTO_IPV6 ;
 int IPPROTO_TCP ;
 int IPV6_V6ONLY ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int TCP_DEFER_ACCEPT ;
 int TCP_FASTOPEN ;
 int assert (int) ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 TYPE_1__ conf ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int h2o_configurator_errprintf (int *,int *,char*,char*,char const*,char const*,char*) ;
 scalar_t__ listen (int,int ) ;
 int set_cloexec (int) ;
 scalar_t__ setsockopt (int,int,int ,void const*,int) ;
 int socket (int,int,int) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int open_inet_listener(h2o_configurator_command_t *cmd, yoml_t *node, const char *hostname, const char *servname, int domain,
                              int type, int protocol, struct sockaddr *addr, socklen_t addrlen)
{
    int fd;

    if ((fd = socket(domain, type, protocol)) == -1)
        goto Error;
    set_cloexec(fd);
    {
        int flag = 1;
        if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &flag, sizeof(flag)) != 0)
            goto Error;
    }
    if (bind(fd, addr, addrlen) != 0)
        goto Error;


    if (protocol == IPPROTO_TCP) {
        if (listen(fd, H2O_SOMAXCONN) != 0)
            goto Error;

        if (conf.tfo_queues > 0) {
            assert(!"conf.tfo_queues not zero on platform without TCP_FASTOPEN");

        }
    }

    return fd;

Error:
    if (fd != -1)
        close(fd);
    h2o_configurator_errprintf(((void*)0), node, "failed to listen to %s port %s:%s: %s", protocol == IPPROTO_TCP ? "TCP" : "UDP",
                               hostname != ((void*)0) ? hostname : "ANY", servname, strerror(errno));
    return -1;
}
