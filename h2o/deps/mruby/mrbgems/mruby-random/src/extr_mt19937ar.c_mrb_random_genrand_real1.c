
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double double_; double int_; } ;
struct TYPE_6__ {TYPE_1__ gen; } ;
typedef TYPE_2__ mt_state ;


 int mrb_random_genrand_int32 (TYPE_2__*) ;

double mrb_random_genrand_real1(mt_state *t)
{
    mrb_random_genrand_int32(t);
    t->gen.double_ = t->gen.int_*(1.0/4294967295.0);
    return t->gen.double_;

}
