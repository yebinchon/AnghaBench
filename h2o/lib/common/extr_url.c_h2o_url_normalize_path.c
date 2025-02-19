
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int h2o_mem_pool_t ;
struct TYPE_5__ {char* base; int len; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 size_t SIZE_MAX ;
 int h2o_error_printf (char*,int,char const*,int,char*) ;
 TYPE_1__ h2o_iovec_init (char*,int) ;
 size_t h2o_strstr (char*,int,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 TYPE_1__ rebuild_path (int *,char const*,size_t,size_t*,size_t**) ;

h2o_iovec_t h2o_url_normalize_path(h2o_mem_pool_t *pool, const char *path, size_t len, size_t *query_at, size_t **norm_indexes)
{
    const char *p = path, *end = path + len;
    h2o_iovec_t ret;

    *query_at = SIZE_MAX;
    *norm_indexes = ((void*)0);

    if (len == 0) {
        ret = h2o_iovec_init("/", 1);
        return ret;
    }

    if (path[0] != '/')
        goto Rewrite;

    for (; p + 1 < end; ++p) {
        if ((p[0] == '/' && p[1] == '.') || p[0] == '%') {

            goto Rewrite;
        } else if (p[0] == '?') {
            *query_at = p - path;
            goto Return;
        }
    }
    for (; p < end; ++p) {
        if (p[0] == '?') {
            *query_at = p - path;
            goto Return;
        }
    }

Return:
    ret.base = (char *)path;
    ret.len = p - path;
    return ret;

Rewrite:
    ret = rebuild_path(pool, path, len, query_at, norm_indexes);
    if (ret.len == 0)
        goto RewriteError;
    if (ret.base[0] != '/')
        goto RewriteError;
    if (h2o_strstr(ret.base, ret.len, H2O_STRLIT("/../")) != SIZE_MAX)
        goto RewriteError;
    if (ret.len >= 3 && memcmp(ret.base + ret.len - 3, "/..", 3) == 0)
        goto RewriteError;
    return ret;
RewriteError:
    h2o_error_printf("failed to normalize path: `%.*s` => `%.*s`\n", (int)len, path, (int)ret.len, ret.base);
    ret = h2o_iovec_init("/", 1);
    return ret;
}
