
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_EOF () ;

__attribute__((used)) static const char *parse_int(const char *buf, const char *buf_end, int *value, int *ret)
{
    int v;
    CHECK_EOF();
    if (!('0' <= *buf && *buf <= '9')) {
        *ret = -1;
        return ((void*)0);
    }
    v = 0;
    for (;; ++buf) {
        CHECK_EOF();
        if ('0' <= *buf && *buf <= '9') {
            v = v * 10 + *buf - '0';
        } else {
            break;
        }
    }

    *value = v;
    return buf;
}
