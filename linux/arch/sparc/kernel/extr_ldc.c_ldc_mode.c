
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct ldc_channel {TYPE_1__ cfg; } ;



int ldc_mode(struct ldc_channel *lp)
{
 return lp->cfg.mode;
}
