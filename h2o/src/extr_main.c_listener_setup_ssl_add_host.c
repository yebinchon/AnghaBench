
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; int * entries; } ;
struct listener_ssl_config_t {TYPE_3__ hostnames; } ;
struct TYPE_4__ {char* base; int len; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int h2o_iovec_init (char*,int) ;
 int h2o_vector_reserve (int *,TYPE_3__*,scalar_t__) ;
 char* memchr (char*,char,int) ;

__attribute__((used)) static void listener_setup_ssl_add_host(struct listener_ssl_config_t *ssl_config, h2o_iovec_t host)
{
    const char *host_end = memchr(host.base, ':', host.len);
    if (host_end == ((void*)0))
        host_end = host.base + host.len;

    h2o_vector_reserve(((void*)0), &ssl_config->hostnames, ssl_config->hostnames.size + 1);
    ssl_config->hostnames.entries[ssl_config->hostnames.size++] = h2o_iovec_init(host.base, host_end - host.base);
}
