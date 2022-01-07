
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_4__ {TYPE_2__* buf; TYPE_3__* enc; } ;
struct st_ptls_record_message_emitter_t {int rec_start; TYPE_1__ super; } ;
typedef int ptls_message_emitter_t ;
struct TYPE_6__ {int * aead; } ;
struct TYPE_5__ {int off; void** base; } ;


 size_t PTLS_MAX_PLAINTEXT_RECORD_SIZE ;
 int assert (int) ;
 int buffer_encrypt_record (TYPE_2__*,int,TYPE_3__*) ;

__attribute__((used)) static int commit_record_message(ptls_message_emitter_t *_self)
{
    struct st_ptls_record_message_emitter_t *self = (void *)_self;
    int ret;

    if (self->super.enc->aead != ((void*)0)) {
        ret = buffer_encrypt_record(self->super.buf, self->rec_start, self->super.enc);
    } else {

        size_t sz = self->super.buf->off - self->rec_start - 5;
        assert(sz <= PTLS_MAX_PLAINTEXT_RECORD_SIZE);
        self->super.buf->base[self->rec_start + 3] = (uint8_t)(sz >> 8);
        self->super.buf->base[self->rec_start + 4] = (uint8_t)(sz);
        ret = 0;
    }

    return ret;
}
