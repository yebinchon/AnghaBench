
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bts_buffer {TYPE_1__* buf; } ;
struct TYPE_2__ {unsigned long offset; unsigned long displacement; } ;



__attribute__((used)) static unsigned long bts_buffer_offset(struct bts_buffer *buf, unsigned int idx)
{
 return buf->buf[idx].offset + buf->buf[idx].displacement;
}
