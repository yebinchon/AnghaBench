
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* sstrdup (char const*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *single_line(const char *start) {
    char *result = sstrdup(start);
    char *end = strchr(result, '\n');
    if (end != ((void*)0))
        *end = '\0';
    return result;
}
