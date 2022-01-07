
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int http_minor; int http_major; int status_code; int method; } ;
typedef TYPE_1__ http_parser ;
struct TYPE_7__ {int should_keep_alive; int headers_complete_cb_called; int http_minor; int http_major; int status_code; int method; } ;


 int TRUE ;
 int assert (int) ;
 int http_should_keep_alive (TYPE_1__*) ;
 TYPE_3__* messages ;
 size_t num_messages ;
 TYPE_1__ parser ;

int
headers_complete_cb (http_parser *p)
{
  assert(p == &parser);
  messages[num_messages].method = parser.method;
  messages[num_messages].status_code = parser.status_code;
  messages[num_messages].http_major = parser.http_major;
  messages[num_messages].http_minor = parser.http_minor;
  messages[num_messages].headers_complete_cb_called = TRUE;
  messages[num_messages].should_keep_alive = http_should_keep_alive(&parser);
  return 0;
}
