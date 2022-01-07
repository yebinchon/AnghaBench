
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; } ;
struct xz_dec {size_t in_start; int crc32; TYPE_1__ index; } ;
struct xz_buf {size_t in_pos; size_t in; } ;


 int xz_crc32 (size_t,size_t,int ) ;

__attribute__((used)) static void index_update(struct xz_dec *s, const struct xz_buf *b)
{
 size_t in_used = b->in_pos - s->in_start;
 s->index.size += in_used;
 s->crc32 = xz_crc32(b->in + s->in_start, in_used, s->crc32);
}
