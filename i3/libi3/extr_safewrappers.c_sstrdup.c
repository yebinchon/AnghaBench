
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int err (int ,char*) ;
 char* strdup (char const*) ;

char *sstrdup(const char *str) {
    char *result = strdup(str);
    if (result == ((void*)0))
        err(EXIT_FAILURE, "strdup()");
    return result;
}
