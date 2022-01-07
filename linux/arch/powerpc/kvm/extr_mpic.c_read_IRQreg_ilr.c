
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct openpic {int flags; TYPE_1__* src; } ;
struct TYPE_2__ {int output; } ;


 int OPENPIC_FLAG_ILR ;

__attribute__((used)) static inline uint32_t read_IRQreg_ilr(struct openpic *opp, int n_IRQ)
{
 if (opp->flags & OPENPIC_FLAG_ILR)
  return opp->src[n_IRQ].output;

 return 0xffffffff;
}
