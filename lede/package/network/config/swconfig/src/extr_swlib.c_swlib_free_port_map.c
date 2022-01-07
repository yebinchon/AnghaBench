
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switch_dev {int ports; TYPE_1__* maps; } ;
struct TYPE_2__ {struct TYPE_2__* segment; } ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
swlib_free_port_map(struct switch_dev *dev)
{
 int i;

 if (!dev || !dev->maps)
  return;

 for (i = 0; i < dev->ports; i++)
  free(dev->maps[i].segment);
 free(dev->maps);
}
