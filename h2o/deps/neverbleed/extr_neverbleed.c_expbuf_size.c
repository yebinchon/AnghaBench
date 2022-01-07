
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expbuf_t {size_t end; size_t start; } ;



__attribute__((used)) static size_t expbuf_size(struct expbuf_t *buf)
{
    return buf->end - buf->start;
}
