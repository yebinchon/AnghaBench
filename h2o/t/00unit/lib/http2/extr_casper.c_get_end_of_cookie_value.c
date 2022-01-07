
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t get_end_of_cookie_value(char *cookie, size_t cookie_len)
{
    size_t i;
    for (i = 0; i != cookie_len; ++i)
        if (cookie[i] == ';')
            break;
    return i;
}
