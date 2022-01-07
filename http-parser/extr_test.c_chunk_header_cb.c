
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int content_length; } ;
typedef TYPE_1__ http_parser ;
struct TYPE_6__ {int num_chunks; int * chunk_lengths; } ;


 int MAX_CHUNKS ;
 int assert (int) ;
 TYPE_3__* messages ;
 size_t num_messages ;
 TYPE_1__ parser ;

int
chunk_header_cb (http_parser *p)
{
  assert(p == &parser);
  int chunk_idx = messages[num_messages].num_chunks;
  messages[num_messages].num_chunks++;
  if (chunk_idx < MAX_CHUNKS) {
    messages[num_messages].chunk_lengths[chunk_idx] = p->content_length;
  }

  return 0;
}
