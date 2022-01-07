
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;


 int _ (char*) ;
 int file_exists (char const*) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int ) ;
 int warning_errno (int ,char const*) ;

__attribute__((used)) static int read_oneliner(struct strbuf *buf,
 const char *path, int skip_if_empty)
{
 int orig_len = buf->len;

 if (!file_exists(path))
  return 0;

 if (strbuf_read_file(buf, path, 0) < 0) {
  warning_errno(_("could not read '%s'"), path);
  return 0;
 }

 if (buf->len > orig_len && buf->buf[buf->len - 1] == '\n') {
  if (--buf->len > orig_len && buf->buf[buf->len - 1] == '\r')
   --buf->len;
  buf->buf[buf->len] = '\0';
 }

 if (skip_if_empty && buf->len == orig_len)
  return 0;

 return 1;
}
