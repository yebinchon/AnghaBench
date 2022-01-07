
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int http_parser ;
struct TYPE_2__ {scalar_t__ num_chunks; scalar_t__ num_chunks_complete; } ;


 int assert (int) ;
 TYPE_1__* messages ;
 size_t num_messages ;
 int parser ;

int
chunk_complete_cb (http_parser *p)
{
  assert(p == &parser);





  assert(messages[num_messages].num_chunks ==
         messages[num_messages].num_chunks_complete + 1);

  messages[num_messages].num_chunks_complete++;
  return 0;
}
