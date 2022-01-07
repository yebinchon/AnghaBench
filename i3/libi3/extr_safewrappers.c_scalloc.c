
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 void* calloc (size_t,size_t) ;
 int err (int ,char*,size_t,size_t) ;

void *scalloc(size_t num, size_t size) {
    void *result = calloc(num, size);
    if (result == ((void*)0))
        err(EXIT_FAILURE, "calloc(%zd, %zd)", num, size);
    return result;
}
