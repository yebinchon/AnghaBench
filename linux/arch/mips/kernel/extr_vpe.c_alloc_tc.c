
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc {int index; int list; int tc; } ;
struct TYPE_2__ {int tc_list_lock; int tc_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct tc* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__ vpecontrol ;

struct tc *alloc_tc(int index)
{
 struct tc *tc;

 tc = kzalloc(sizeof(struct tc), GFP_KERNEL);
 if (tc == ((void*)0))
  goto out;

 INIT_LIST_HEAD(&tc->tc);
 tc->index = index;

 spin_lock(&vpecontrol.tc_list_lock);
 list_add_tail(&tc->list, &vpecontrol.tc_list);
 spin_unlock(&vpecontrol.tc_list_lock);

out:
 return tc;
}
