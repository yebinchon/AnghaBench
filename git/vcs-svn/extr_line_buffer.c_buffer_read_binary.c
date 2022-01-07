
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct line_buffer {int infile; } ;


 size_t strbuf_fread (struct strbuf*,size_t,int ) ;

size_t buffer_read_binary(struct line_buffer *buf,
    struct strbuf *sb, size_t size)
{
 return strbuf_fread(sb, size, buf->infile);
}
