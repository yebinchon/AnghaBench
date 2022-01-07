
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int fetch_digits(const char *s, size_t n)
{
    int value = 0;
    for (; n != 0; ++s, --n) {
        if (!('0' <= *s && *s <= '9'))
            return -1;
        value = value * 10 + *s - '0';
    }
    return value;
}
