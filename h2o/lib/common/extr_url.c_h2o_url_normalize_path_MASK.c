#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_5__ {char* base; int len; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,int,char*) ; 
 TYPE_1__ FUNC2 (char*,int) ; 
 size_t FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 TYPE_1__ FUNC5 (int /*<<< orphan*/ *,char const*,size_t,size_t*,size_t**) ; 

h2o_iovec_t FUNC6(h2o_mem_pool_t *pool, const char *path, size_t len, size_t *query_at, size_t **norm_indexes)
{
    const char *p = path, *end = path + len;
    h2o_iovec_t ret;

    *query_at = SIZE_MAX;
    *norm_indexes = NULL;

    if (len == 0) {
        ret = FUNC2("/", 1);
        return ret;
    }

    if (path[0] != '/')
        goto Rewrite;

    for (; p + 1 < end; ++p) {
        if ((p[0] == '/' && p[1] == '.') || p[0] == '%') {
            /* detect false positives as well */
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
    ret = FUNC5(pool, path, len, query_at, norm_indexes);
    if (ret.len == 0)
        goto RewriteError;
    if (ret.base[0] != '/')
        goto RewriteError;
    if (FUNC3(ret.base, ret.len, FUNC0("/../")) != SIZE_MAX)
        goto RewriteError;
    if (ret.len >= 3 && FUNC4(ret.base + ret.len - 3, "/..", 3) == 0)
        goto RewriteError;
    return ret;
RewriteError:
    FUNC1("failed to normalize path: `%.*s` => `%.*s`\n", (int)len, path, (int)ret.len, ret.base);
    ret = FUNC2("/", 1);
    return ret;
}