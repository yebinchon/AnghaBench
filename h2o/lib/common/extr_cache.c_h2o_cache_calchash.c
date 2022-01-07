
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_cache_hashcode_t ;



h2o_cache_hashcode_t h2o_cache_calchash(const char *s, size_t l)
{
    h2o_cache_hashcode_t h = 0;
    for (; l != 0; --l)
        h = (h << 5) - h + ((unsigned char *)s)[l - 1];
    return h;
}
