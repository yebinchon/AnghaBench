
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int http_parser ;
struct TYPE_2__ {scalar_t__ message_begin_cb_called; } ;


 scalar_t__ TRUE ;
 int assert (int) ;
 TYPE_1__* messages ;
 size_t num_messages ;
 int parser ;

int
message_begin_cb (http_parser *p)
{
  assert(p == &parser);
  assert(!messages[num_messages].message_begin_cb_called);
  messages[num_messages].message_begin_cb_called = TRUE;
  return 0;
}
