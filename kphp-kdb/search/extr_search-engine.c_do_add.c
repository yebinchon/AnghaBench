
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int In; } ;


 int assert (int) ;
 int do_add_item_tags (scalar_t__*,int,long long) ;
 int read_in (int *,scalar_t__*,int) ;
 scalar_t__* value_buff ;

int do_add (struct connection *c, long long item_id, int size) {
  assert (read_in (&c->In, value_buff, size) == size);
  value_buff[size] = 0;
  return do_add_item_tags (value_buff, size, item_id);
}
