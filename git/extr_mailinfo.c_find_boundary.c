
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct mailinfo {scalar_t__* content_top; int input; } ;


 scalar_t__ is_multipart_boundary (struct mailinfo*,struct strbuf*) ;
 int strbuf_getline_lf (struct strbuf*,int ) ;

__attribute__((used)) static int find_boundary(struct mailinfo *mi, struct strbuf *line)
{
 while (!strbuf_getline_lf(line, mi->input)) {
  if (*(mi->content_top) && is_multipart_boundary(mi, line))
   return 1;
 }
 return 0;
}
