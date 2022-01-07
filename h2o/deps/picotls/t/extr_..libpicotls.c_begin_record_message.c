
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* buf; } ;
struct st_ptls_record_message_emitter_t {TYPE_1__ super; int rec_start; } ;
typedef int ptls_message_emitter_t ;
struct TYPE_4__ {int off; } ;


 int PTLS_CONTENT_TYPE_HANDSHAKE ;
 int PTLS_RECORD_VERSION_MAJOR ;
 int PTLS_RECORD_VERSION_MINOR ;
 int ptls_buffer_push (TYPE_2__*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int begin_record_message(ptls_message_emitter_t *_self)
{
    struct st_ptls_record_message_emitter_t *self = (void *)_self;
    int ret;

    self->rec_start = self->super.buf->off;
    ptls_buffer_push(self->super.buf, PTLS_CONTENT_TYPE_HANDSHAKE, PTLS_RECORD_VERSION_MAJOR, PTLS_RECORD_VERSION_MINOR, 0, 0);
    ret = 0;
Exit:
    return ret;
}
