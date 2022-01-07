
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int err (int ,char*) ;
 char* strndup (char const*,size_t) ;

char *sstrndup(const char *str, size_t size) {
    char *result = strndup(str, size);
    if (result == ((void*)0))
        err(EXIT_FAILURE, "strndup()");
    return result;
}
