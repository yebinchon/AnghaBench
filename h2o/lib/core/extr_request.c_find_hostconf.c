
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_11__ {int len; int base; } ;
typedef TYPE_3__ h2o_iovec_t ;
struct TYPE_9__ {char* base; int len; } ;
struct TYPE_10__ {int port; TYPE_1__ host; } ;
struct TYPE_12__ {TYPE_2__ authority; } ;
typedef TYPE_4__ h2o_hostconf_t ;


 char* alloca (int) ;
 scalar_t__ h2o_memis (char*,int,char*,size_t) ;
 int h2o_strtolower (char*,int) ;
 int * h2o_url_parse_hostport (int ,int,TYPE_3__*,int*) ;
 scalar_t__ memcmp (char*,char*,size_t) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static h2o_hostconf_t *find_hostconf(h2o_hostconf_t **hostconfs, h2o_iovec_t authority, uint16_t default_port)
{
    h2o_iovec_t hostname;
    uint16_t port;
    char *hostname_lc;


    if (authority.len >= 65536)
        return ((void*)0);


    if (h2o_url_parse_hostport(authority.base, authority.len, &hostname, &port) == ((void*)0))
        return ((void*)0);
    if (port == 65535)
        port = default_port;


    hostname_lc = alloca(hostname.len);
    memcpy(hostname_lc, hostname.base, hostname.len);
    h2o_strtolower(hostname_lc, hostname.len);

    do {
        h2o_hostconf_t *hostconf = *hostconfs;
        if (hostconf->authority.port == port || (hostconf->authority.port == 65535 && port == default_port)) {
            if (hostconf->authority.host.base[0] == '*') {

                size_t cmplen = hostconf->authority.host.len - 1;
                if (cmplen < hostname.len &&
                    memcmp(hostconf->authority.host.base + 1, hostname_lc + hostname.len - cmplen, cmplen) == 0)
                    return hostconf;
            } else {

                if (h2o_memis(hostconf->authority.host.base, hostconf->authority.host.len, hostname_lc, hostname.len))
                    return hostconf;
            }
        }
    } while (*++hostconfs != ((void*)0));

    return ((void*)0);
}
