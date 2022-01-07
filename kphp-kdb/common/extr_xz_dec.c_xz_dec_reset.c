
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; scalar_t__ pos; } ;
struct xz_dec {TYPE_1__ temp; int index; int block; scalar_t__ crc32; scalar_t__ pos; scalar_t__ allow_buf_error; int sequence; } ;


 int SEQ_STREAM_HEADER ;
 int STREAM_HEADER_SIZE ;
 int memzero (int *,int) ;

void xz_dec_reset(struct xz_dec *s)
{
 s->sequence = SEQ_STREAM_HEADER;
 s->allow_buf_error = 0;
 s->pos = 0;
 s->crc32 = 0;
 memzero(&s->block, sizeof(s->block));
 memzero(&s->index, sizeof(s->index));
 s->temp.pos = 0;
 s->temp.size = STREAM_HEADER_SIZE;
}
