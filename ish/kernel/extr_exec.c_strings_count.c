
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static unsigned strings_count(const char *args) {
    unsigned n = 0;
    while (*args != '\0') {
        args += strlen(args) + 1;
        n++;
    }
    return n;
}
