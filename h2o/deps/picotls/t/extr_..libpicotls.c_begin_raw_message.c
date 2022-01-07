
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* buf; } ;
struct st_ptls_raw_message_emitter_t {TYPE_2__ super; int start_off; } ;
typedef int ptls_message_emitter_t ;
struct TYPE_3__ {int off; } ;



__attribute__((used)) static int begin_raw_message(ptls_message_emitter_t *_self)
{
    struct st_ptls_raw_message_emitter_t *self = (void *)_self;

    self->start_off = self->super.buf->off;
    return 0;
}
