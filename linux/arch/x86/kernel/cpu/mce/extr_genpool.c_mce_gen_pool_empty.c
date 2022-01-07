
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int llist_empty (int *) ;
 int mce_event_llist ;

bool mce_gen_pool_empty(void)
{
 return llist_empty(&mce_event_llist);
}
