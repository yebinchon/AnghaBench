
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int avail_in; scalar_t__ avail_out; void* next_out; void* next_in; } ;
struct TYPE_6__ {size_t size; TYPE_1__* entries; } ;
struct st_gzip_context_t {TYPE_3__ zs; TYPE_2__ bufs; } ;
typedef int (* processor ) (TYPE_3__*,int) ;
struct TYPE_5__ {scalar_t__ len; scalar_t__ raw; } ;


 scalar_t__ BUF_SIZE ;
 int Z_BUF_ERROR ;
 int Z_OK ;
 int Z_STREAM_END ;
 int assert (int) ;
 int expand_buf (struct st_gzip_context_t*) ;

__attribute__((used)) static size_t process_chunk(struct st_gzip_context_t *self, const void *src, size_t len, int flush, size_t bufindex, processor proc)
{
    int ret;

    self->zs.next_in = (void *)src;
    self->zs.avail_in = (unsigned)len;




    do {

        if (self->bufs.entries[bufindex].len + 32 > BUF_SIZE) {
            ++bufindex;
            if (bufindex == self->bufs.size)
                expand_buf(self);
            self->bufs.entries[bufindex].len = 0;
        }
        self->zs.next_out = (void *)(self->bufs.entries[bufindex].raw + self->bufs.entries[bufindex].len);
        self->zs.avail_out = (unsigned)(BUF_SIZE - self->bufs.entries[bufindex].len);
        ret = proc(&self->zs, flush);

        assert(ret == Z_OK || ret == Z_STREAM_END || ret == Z_BUF_ERROR);
        self->bufs.entries[bufindex].len = BUF_SIZE - self->zs.avail_out;
    } while (self->zs.avail_out == 0 && ret != Z_STREAM_END);

    return bufindex;
}
