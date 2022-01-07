
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_buffer {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static inline size_t lanai_buf_size(const struct lanai_buffer *buf)
{
 return ((unsigned long) buf->end) - ((unsigned long) buf->start);
}
