
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ capacity; scalar_t__ off; int is_allocated; int * base; } ;
typedef TYPE_1__ ptls_buffer_t ;


 int PTLS_ERROR_NO_MEMORY ;
 scalar_t__ PTLS_MEMORY_DEBUG ;
 int * malloc (size_t) ;
 int memcpy (int *,int *,size_t) ;
 int ptls_buffer__release_memory (TYPE_1__*) ;

int ptls_buffer_reserve(ptls_buffer_t *buf, size_t delta)
{
    if (buf->base == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;

    if (PTLS_MEMORY_DEBUG || buf->capacity < buf->off + delta) {
        uint8_t *newp;
        size_t new_capacity = buf->capacity;
        if (new_capacity < 1024)
            new_capacity = 1024;
        while (new_capacity < buf->off + delta) {
            new_capacity *= 2;
        }
        if ((newp = malloc(new_capacity)) == ((void*)0))
            return PTLS_ERROR_NO_MEMORY;
        memcpy(newp, buf->base, buf->off);
        ptls_buffer__release_memory(buf);
        buf->base = newp;
        buf->capacity = new_capacity;
        buf->is_allocated = 1;
    }

    return 0;
}
