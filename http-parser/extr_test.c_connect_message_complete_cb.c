
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int http_parser ;
struct TYPE_2__ {int should_keep_alive; } ;


 int http_should_keep_alive (int *) ;
 int message_complete_cb (int *) ;
 TYPE_1__* messages ;
 size_t num_messages ;
 int parser ;

int
connect_message_complete_cb (http_parser *p)
{
  messages[num_messages].should_keep_alive = http_should_keep_alive(&parser);
  return message_complete_cb(p);
}
