
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GARBAGE_VALUE ;
 void* _sodium_malloc (size_t const) ;
 int memset (void*,int,size_t const) ;

__attribute__((malloc)) void *
sodium_malloc(const size_t size)
{
    void *ptr;

    if ((ptr = _sodium_malloc(size)) == ((void*)0)) {
        return ((void*)0);
    }
    memset(ptr, (int) GARBAGE_VALUE, size);

    return ptr;
}
