
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct openpic {TYPE_1__* src; } ;
struct TYPE_2__ {int ivpr; } ;



__attribute__((used)) static inline uint32_t read_IRQreg_ivpr(struct openpic *opp, int n_IRQ)
{
 return opp->src[n_IRQ].ivpr;
}
