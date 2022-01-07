
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int alignment; int taken_list; int free_list; int empty_list; scalar_t__ flags; scalar_t__ empty_slots; scalar_t__ max_blocks; int * block; } ;
typedef TYPE_1__ rh_info_t ;


 int EINVAL ;
 int ENOMEM ;
 TYPE_1__* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* kmalloc (int,int ) ;

rh_info_t *rh_create(unsigned int alignment)
{
 rh_info_t *info;


 if ((alignment & (alignment - 1)) != 0)
  return ERR_PTR(-EINVAL);

 info = kmalloc(sizeof(*info), GFP_ATOMIC);
 if (info == ((void*)0))
  return ERR_PTR(-ENOMEM);

 info->alignment = alignment;


 info->block = ((void*)0);
 info->max_blocks = 0;
 info->empty_slots = 0;
 info->flags = 0;

 INIT_LIST_HEAD(&info->empty_list);
 INIT_LIST_HEAD(&info->free_list);
 INIT_LIST_HEAD(&info->taken_list);

 return info;
}
