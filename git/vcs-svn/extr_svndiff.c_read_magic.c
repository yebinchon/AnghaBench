
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct line_buffer {int dummy; } ;
typedef int off_t ;
typedef int magic ;


 struct strbuf STRBUF_INIT ;
 int error (char*) ;
 scalar_t__ memcmp (int ,char const*,int) ;
 scalar_t__ read_chunk (struct line_buffer*,int *,struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int read_magic(struct line_buffer *in, off_t *len)
{
 static const char magic[] = {'S', 'V', 'N', '\0'};
 struct strbuf sb = STRBUF_INIT;

 if (read_chunk(in, len, &sb, sizeof(magic))) {
  strbuf_release(&sb);
  return -1;
 }
 if (memcmp(sb.buf, magic, sizeof(magic))) {
  strbuf_release(&sb);
  return error("invalid delta: unrecognized file type");
 }
 strbuf_release(&sb);
 return 0;
}
