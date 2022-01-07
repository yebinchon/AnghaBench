
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char const*) ;

__attribute__((used)) static int strcasecmp_nullable(const char *a, const char *b) {
    if (a == b) {
        return 0;
    }
    if (a == ((void*)0)) {
        return -1;
    }
    if (b == ((void*)0)) {
        return 1;
    }
    return strcasecmp(a, b);
}
