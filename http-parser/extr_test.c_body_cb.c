
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int http_parser ;
struct TYPE_2__ {size_t body_size; int body; } ;


 int assert (int) ;
 int check_body_is_final (int *) ;
 TYPE_1__* messages ;
 size_t num_messages ;
 int parser ;
 int strlncat (int ,int,char const*,size_t) ;

int
body_cb (http_parser *p, const char *buf, size_t len)
{
  assert(p == &parser);
  strlncat(messages[num_messages].body,
           sizeof(messages[num_messages].body),
           buf,
           len);
  messages[num_messages].body_size += len;
  check_body_is_final(p);

  return 0;
}
