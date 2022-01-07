
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int num_headers; int last_header_element; int ** headers; } ;
typedef int http_parser ;


 int VALUE ;
 int assert (int) ;
 struct message* messages ;
 size_t num_messages ;
 int parser ;
 int strlncat (int ,int,char const*,size_t) ;

int
header_value_cb (http_parser *p, const char *buf, size_t len)
{
  assert(p == &parser);
  struct message *m = &messages[num_messages];

  strlncat(m->headers[m->num_headers-1][1],
           sizeof(m->headers[m->num_headers-1][1]),
           buf,
           len);

  m->last_header_element = VALUE;

  return 0;
}
