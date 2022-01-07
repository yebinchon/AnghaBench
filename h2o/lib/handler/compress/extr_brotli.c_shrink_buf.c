
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t size; TYPE_1__* entries; } ;
struct st_brotli_context_t {TYPE_2__ bufs; } ;
struct TYPE_3__ {int raw; } ;


 int free (int ) ;

__attribute__((used)) static void shrink_buf(struct st_brotli_context_t *self, size_t new_size)
{
    while (new_size < self->bufs.size)
        free(self->bufs.entries[--self->bufs.size].raw);
}
