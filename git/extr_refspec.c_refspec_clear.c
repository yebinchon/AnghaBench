
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec {int nr; int raw_nr; scalar_t__ fetch; scalar_t__ raw_alloc; scalar_t__* raw; scalar_t__ alloc; scalar_t__* items; } ;


 int FREE_AND_NULL (scalar_t__*) ;
 int free (char*) ;
 int refspec_item_clear (scalar_t__*) ;

void refspec_clear(struct refspec *rs)
{
 int i;

 for (i = 0; i < rs->nr; i++)
  refspec_item_clear(&rs->items[i]);

 FREE_AND_NULL(rs->items);
 rs->alloc = 0;
 rs->nr = 0;

 for (i = 0; i < rs->raw_nr; i++)
  free((char *)rs->raw[i]);
 FREE_AND_NULL(rs->raw);
 rs->raw_alloc = 0;
 rs->raw_nr = 0;

 rs->fetch = 0;
}
