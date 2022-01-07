
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parsed; } ;
struct tree {unsigned long size; void* buffer; TYPE_1__ object; } ;



int parse_tree_buffer(struct tree *item, void *buffer, unsigned long size)
{
 if (item->object.parsed)
  return 0;
 item->object.parsed = 1;
 item->buffer = buffer;
 item->size = size;

 return 0;
}
