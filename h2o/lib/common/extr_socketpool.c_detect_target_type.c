
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_un {int dummy; } ;
struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
typedef int socklen_t ;
struct TYPE_4__ {int host; } ;
typedef TYPE_1__ h2o_url_t ;
typedef int h2o_socketpool_target_type_t ;


 int AF_INET ;
 int H2O_SOCKETPOOL_TYPE_NAMED ;
 int H2O_SOCKETPOOL_TYPE_SOCKADDR ;
 int assert (int ) ;
 scalar_t__ h2o_hostinfo_aton (int ,int *) ;
 int h2o_url_get_port (TYPE_1__*) ;
 char* h2o_url_host_to_sun (int ,struct sockaddr_un*) ;
 char const* h2o_url_host_to_sun_err_is_not_unix_socket ;
 int htons (int ) ;
 int memset (struct sockaddr_storage*,int ,int) ;

h2o_socketpool_target_type_t detect_target_type(h2o_url_t *url, struct sockaddr_storage *sa, socklen_t *salen)
{
    memset(sa, 0, sizeof(*sa));
    const char *to_sun_err = h2o_url_host_to_sun(url->host, (struct sockaddr_un *)sa);
    if (to_sun_err == h2o_url_host_to_sun_err_is_not_unix_socket) {
        sa->ss_family = AF_INET;
        struct sockaddr_in *sin = (struct sockaddr_in *)sa;
        *salen = sizeof(*sin);

        if (h2o_hostinfo_aton(url->host, &sin->sin_addr) == 0) {
            sin->sin_port = htons(h2o_url_get_port(url));
            return H2O_SOCKETPOOL_TYPE_SOCKADDR;
        } else {
            return H2O_SOCKETPOOL_TYPE_NAMED;
        }
    } else {
        assert(to_sun_err == ((void*)0));
        *salen = sizeof(struct sockaddr_un);
        return H2O_SOCKETPOOL_TYPE_SOCKADDR;
    }
}
