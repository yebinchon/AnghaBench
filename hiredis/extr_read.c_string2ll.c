
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long LLONG_MAX ;
 int LLONG_MIN ;
 int REDIS_ERR ;
 int REDIS_OK ;
 int ULLONG_MAX ;

__attribute__((used)) static int string2ll(const char *s, size_t slen, long long *value) {
    const char *p = s;
    size_t plen = 0;
    int negative = 0;
    unsigned long long v;

    if (plen == slen)
        return REDIS_ERR;


    if (slen == 1 && p[0] == '0') {
        if (value != ((void*)0)) *value = 0;
        return REDIS_OK;
    }

    if (p[0] == '-') {
        negative = 1;
        p++; plen++;


        if (plen == slen)
            return REDIS_ERR;
    }


    if (p[0] >= '1' && p[0] <= '9') {
        v = p[0]-'0';
        p++; plen++;
    } else if (p[0] == '0' && slen == 1) {
        *value = 0;
        return REDIS_OK;
    } else {
        return REDIS_ERR;
    }

    while (plen < slen && p[0] >= '0' && p[0] <= '9') {
        if (v > (ULLONG_MAX / 10))
            return REDIS_ERR;
        v *= 10;

        if (v > (ULLONG_MAX - (p[0]-'0')))
            return REDIS_ERR;
        v += p[0]-'0';

        p++; plen++;
    }


    if (plen < slen)
        return REDIS_ERR;

    if (negative) {
        if (v > ((unsigned long long)(-(LLONG_MIN+1))+1))
            return REDIS_ERR;
        if (value != ((void*)0)) *value = -v;
    } else {
        if (v > LLONG_MAX)
            return REDIS_ERR;
        if (value != ((void*)0)) *value = v;
    }
    return REDIS_OK;
}
