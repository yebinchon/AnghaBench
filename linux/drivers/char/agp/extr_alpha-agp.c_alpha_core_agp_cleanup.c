
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ops; } ;
typedef TYPE_2__ alpha_agp_info ;
struct TYPE_7__ {TYPE_2__* dev_private_data; } ;
struct TYPE_5__ {int (* cleanup ) (TYPE_2__*) ;} ;


 TYPE_4__* agp_bridge ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void alpha_core_agp_cleanup(void)
{
 alpha_agp_info *agp = agp_bridge->dev_private_data;

 agp->ops->cleanup(agp);
}
