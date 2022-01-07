
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t size; TYPE_1__* entries; } ;
struct listener_ssl_config_t {TYPE_2__ hostnames; } ;
struct TYPE_6__ {size_t size; struct listener_ssl_config_t** entries; } ;
struct listener_config_t {TYPE_3__ ssl; } ;
struct TYPE_4__ {char* base; size_t len; } ;


 scalar_t__ h2o_lcstris (char const*,size_t,char*,size_t) ;

__attribute__((used)) static struct listener_ssl_config_t *resolve_sni(struct listener_config_t *listener, const char *name, size_t name_len)
{
    size_t i, j;

    for (i = 0; i != listener->ssl.size; ++i) {
        struct listener_ssl_config_t *ssl_config = listener->ssl.entries[i];
        for (j = 0; j != ssl_config->hostnames.size; ++j) {
            if (ssl_config->hostnames.entries[j].base[0] == '*') {

                size_t cmplen = ssl_config->hostnames.entries[j].len - 1;
                if (!(cmplen < name_len && h2o_lcstris(name + name_len - cmplen, cmplen, ssl_config->hostnames.entries[j].base + 1,
                                                       ssl_config->hostnames.entries[j].len - 1)))
                    continue;
            } else {
                if (!h2o_lcstris(name, name_len, ssl_config->hostnames.entries[j].base, ssl_config->hostnames.entries[j].len))
                    continue;
            }

            return listener->ssl.entries[i];
        }
    }
    return listener->ssl.entries[0];
}
