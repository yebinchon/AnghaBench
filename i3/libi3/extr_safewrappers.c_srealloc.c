
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int err (int ,char*,size_t) ;
 void* realloc (void*,size_t) ;

void *srealloc(void *ptr, size_t size) {
    void *result = realloc(ptr, size);
    if (result == ((void*)0) && size > 0)
        err(EXIT_FAILURE, "realloc(%zd)", size);
    return result;
}
