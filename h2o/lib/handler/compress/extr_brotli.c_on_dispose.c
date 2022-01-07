
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int push_buf; } ;
struct TYPE_3__ {int entries; } ;
struct st_brotli_context_t {TYPE_2__ super; TYPE_1__ bufs; int state; } ;


 int BrotliEncoderDestroyInstance (int ) ;
 int free (int ) ;
 int shrink_buf (struct st_brotli_context_t*,int ) ;

__attribute__((used)) static void on_dispose(void *_self)
{
    struct st_brotli_context_t *self = _self;

    BrotliEncoderDestroyInstance(self->state);
    shrink_buf(self, 0);
    free(self->bufs.entries);
    free(self->super.push_buf);
}
