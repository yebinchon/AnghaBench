
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef TYPE_1__ h2o_iovec_t ;


 TYPE_1__ h2o_iovec_init (char const*,int) ;
 size_t h2o_strtosize (char const*,int) ;
 char* memchr (char const*,char,int) ;

const char *h2o_url_parse_hostport(const char *s, size_t len, h2o_iovec_t *host, uint16_t *port)
{
    const char *token_start = s, *token_end, *end = s + len;

    *port = 65535;

    if (token_start == end)
        return ((void*)0);

    if (*token_start == '[') {

        ++token_start;
        if ((token_end = memchr(token_start, ']', end - token_start)) == ((void*)0))
            return ((void*)0);
        *host = h2o_iovec_init(token_start, token_end - token_start);
        token_start = token_end + 1;
    } else {
        for (token_end = token_start; !(token_end == end || *token_end == '/' || *token_end == ':'); ++token_end)
            ;
        *host = h2o_iovec_init(token_start, token_end - token_start);
        token_start = token_end;
    }


    if (host->len == 0)
        return ((void*)0);


    if (token_start != end && *token_start == ':') {
        size_t p;
        ++token_start;
        if ((token_end = memchr(token_start, '/', end - token_start)) == ((void*)0))
            token_end = end;
        if ((p = h2o_strtosize(token_start, token_end - token_start)) >= 65535)
            return ((void*)0);
        *port = (uint16_t)p;
        token_start = token_end;
    }

    return token_start;
}
