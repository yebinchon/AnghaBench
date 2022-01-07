
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {scalar_t__ last_header_element; int num_headers; int ** headers; } ;
typedef int http_parser ;


 scalar_t__ FIELD ;
 int assert (int) ;
 struct message* messages ;
 size_t num_messages ;
 int parser ;
 int strlncat (int ,int,char const*,size_t) ;

int
header_field_cb (http_parser *p, const char *buf, size_t len)
{
  assert(p == &parser);
  struct message *m = &messages[num_messages];

  if (m->last_header_element != FIELD)
    m->num_headers++;

  strlncat(m->headers[m->num_headers-1][0],
           sizeof(m->headers[m->num_headers-1][0]),
           buf,
           len);

  m->last_header_element = FIELD;

  return 0;
}
