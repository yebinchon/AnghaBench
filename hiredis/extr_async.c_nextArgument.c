
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strtol (char const*,int *,int) ;

__attribute__((used)) static const char *nextArgument(const char *start, const char **str, size_t *len) {
    const char *p = start;
    if (p[0] != '$') {
        p = strchr(p,'$');
        if (p == ((void*)0)) return ((void*)0);
    }

    *len = (int)strtol(p+1,((void*)0),10);
    p = strchr(p,'\r');
    assert(p);
    *str = p+2;
    return p+2+(*len)+2;
}
