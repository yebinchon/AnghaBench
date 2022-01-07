
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; struct TYPE_4__* block; } ;
typedef TYPE_1__ rh_info_t ;


 int RHIF_STATIC_BLOCK ;
 int RHIF_STATIC_INFO ;
 int kfree (TYPE_1__*) ;

void rh_destroy(rh_info_t * info)
{
 if ((info->flags & RHIF_STATIC_BLOCK) == 0)
  kfree(info->block);

 if ((info->flags & RHIF_STATIC_INFO) == 0)
  kfree(info);
}
