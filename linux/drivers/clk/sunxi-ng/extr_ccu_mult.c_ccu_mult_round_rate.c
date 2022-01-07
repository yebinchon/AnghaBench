
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct ccu_mux_internal {int dummy; } ;
struct TYPE_2__ {int width; scalar_t__ offset; scalar_t__ max; int min; } ;
struct ccu_mult {TYPE_1__ mult; } ;
struct _ccu_mult {unsigned long mult; scalar_t__ max; int min; } ;


 int ccu_mult_find_best (unsigned long,unsigned long,struct _ccu_mult*) ;

__attribute__((used)) static unsigned long ccu_mult_round_rate(struct ccu_mux_internal *mux,
      struct clk_hw *parent,
      unsigned long *parent_rate,
      unsigned long rate,
      void *data)
{
 struct ccu_mult *cm = data;
 struct _ccu_mult _cm;

 _cm.min = cm->mult.min;

 if (cm->mult.max)
  _cm.max = cm->mult.max;
 else
  _cm.max = (1 << cm->mult.width) + cm->mult.offset - 1;

 ccu_mult_find_best(*parent_rate, rate, &_cm);

 return *parent_rate * _cm.mult;
}
