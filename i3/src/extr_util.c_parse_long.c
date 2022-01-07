
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long LONG_MAX ;
 long LONG_MIN ;
 long strtol (char const*,char**,int) ;

bool parse_long(const char *str, long *out, int base) {
    char *end = ((void*)0);
    long result = strtol(str, &end, base);
    if (result == LONG_MIN || result == LONG_MAX || result < 0 || (end != ((void*)0) && *end != '\0')) {
        *out = result;
        return 0;
    }

    *out = result;
    return 1;
}
