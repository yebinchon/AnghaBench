
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct blkcg_gq {TYPE_2__* q; } ;
struct TYPE_4__ {TYPE_1__* backing_dev_info; } ;
struct TYPE_3__ {scalar_t__ dev; } ;


 char const* dev_name (scalar_t__) ;

const char *blkg_dev_name(struct blkcg_gq *blkg)
{

 if (blkg->q->backing_dev_info->dev)
  return dev_name(blkg->q->backing_dev_info->dev);
 return ((void*)0);
}
