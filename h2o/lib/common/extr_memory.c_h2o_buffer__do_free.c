
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ capacity; int _fd; TYPE_2__* _prototype; } ;
typedef TYPE_3__ h2o_buffer_t ;
struct TYPE_7__ {scalar_t__ capacity; } ;
struct TYPE_8__ {int allocator; TYPE_1__ _initial_buf; } ;


 int close (int) ;
 int free (TYPE_3__*) ;
 int h2o_mem_free_recycle (int *,TYPE_3__*) ;
 int munmap (void*,int ) ;
 int topagesize (scalar_t__) ;

void h2o_buffer__do_free(h2o_buffer_t *buffer)
{

    if (buffer->capacity == buffer->_prototype->_initial_buf.capacity) {
        h2o_mem_free_recycle(&buffer->_prototype->allocator, buffer);
    } else if (buffer->_fd != -1) {
        close(buffer->_fd);
        munmap((void *)buffer, topagesize(buffer->capacity));
    } else {
        free(buffer);
    }
}
