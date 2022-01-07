
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gdsc {int reset_count; int * resets; TYPE_2__* rcdev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* deassert ) (TYPE_2__*,int ) ;} ;


 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static inline int gdsc_deassert_reset(struct gdsc *sc)
{
 int i;

 for (i = 0; i < sc->reset_count; i++)
  sc->rcdev->ops->deassert(sc->rcdev, sc->resets[i]);
 return 0;
}
