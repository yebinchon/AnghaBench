
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int size; TYPE_1__* entries; } ;
struct st_brotli_context_t {scalar_t__ buf_capacity; TYPE_2__ bufs; int state; } ;
struct TYPE_3__ {scalar_t__ len; scalar_t__ raw; } ;
typedef int BrotliEncoderOperation ;


 int BrotliEncoderCompressStream (int ,int ,size_t*,int const**,size_t*,int **,int *) ;
 int expand_buf (struct st_brotli_context_t*) ;
 int h2o_fatal (char*) ;

__attribute__((used)) static void compress_core(struct st_brotli_context_t *self, BrotliEncoderOperation op, const uint8_t **src, size_t *srclen)
{
    size_t bufindex = self->bufs.size - 1;

    if (self->bufs.entries[bufindex].len == self->buf_capacity) {
        expand_buf(self);
        ++bufindex;
    }
    uint8_t *dst = (uint8_t *)self->bufs.entries[bufindex].raw + self->bufs.entries[bufindex].len;
    size_t dstlen = self->buf_capacity - self->bufs.entries[bufindex].len;

    if (!BrotliEncoderCompressStream(self->state, op, srclen, src, &dstlen, &dst, ((void*)0)))
        h2o_fatal("BrotliEncoderCompressStream");

    self->bufs.entries[bufindex].len = self->buf_capacity - dstlen;
}
