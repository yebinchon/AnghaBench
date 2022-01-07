
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int http_parser ;
struct TYPE_2__ {int response_status; int status_cb_called; } ;


 int TRUE ;
 int assert (int) ;
 TYPE_1__* messages ;
 size_t num_messages ;
 int parser ;
 int strlncat (int ,int,char const*,size_t) ;

int
response_status_cb (http_parser *p, const char *buf, size_t len)
{
  assert(p == &parser);

  messages[num_messages].status_cb_called = TRUE;

  strlncat(messages[num_messages].response_status,
           sizeof(messages[num_messages].response_status),
           buf,
           len);
  return 0;
}
