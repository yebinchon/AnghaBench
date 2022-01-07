
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; int buf; } ;
struct mailinfo {struct strbuf** content_top; } ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int is_multipart_boundary(struct mailinfo *mi, const struct strbuf *line)
{
 struct strbuf *content_top = *(mi->content_top);

 return ((content_top->len <= line->len) &&
  !memcmp(line->buf, content_top->buf, content_top->len));
}
