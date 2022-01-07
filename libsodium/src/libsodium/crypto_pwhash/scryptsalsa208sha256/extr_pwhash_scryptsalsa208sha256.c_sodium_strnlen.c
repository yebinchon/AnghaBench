
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
sodium_strnlen(const char *str, size_t maxlen)
{
    size_t i = 0U;

    while (i < maxlen && str[i] != 0) {
        i++;
    }
    return i;
}
