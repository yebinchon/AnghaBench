
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int err (int ,char*,size_t) ;
 void* malloc (size_t) ;

void *smalloc(size_t size) {
    void *result = malloc(size);
    if (result == ((void*)0))
        err(EXIT_FAILURE, "malloc(%zd)", size);
    return result;
}
