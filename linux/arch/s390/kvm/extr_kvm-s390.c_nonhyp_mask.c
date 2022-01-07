
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hmfai; } ;


 TYPE_1__ sclp ;

__attribute__((used)) static inline unsigned long nonhyp_mask(int i)
{
 unsigned int nonhyp_fai = (sclp.hmfai << i * 2) >> 30;

 return 0x0000ffffffffffffUL >> (nonhyp_fai << 4);
}
