
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_iovec_t ;


 int h2o_iovec_init (char const*,int) ;

h2o_iovec_t h2o_get_filext(const char *path, size_t len)
{
    const char *end = path + len, *p = end;

    while (--p != path) {
        if (*p == '.') {
            return h2o_iovec_init(p + 1, end - (p + 1));
        } else if (*p == '/') {
            break;
        }
    }
    return h2o_iovec_init(((void*)0), 0);
}
