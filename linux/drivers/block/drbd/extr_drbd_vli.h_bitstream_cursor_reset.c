
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitstream_cursor {scalar_t__ bit; void* b; } ;



__attribute__((used)) static inline void bitstream_cursor_reset(struct bitstream_cursor *cur, void *s)
{
 cur->b = s;
 cur->bit = 0;
}
