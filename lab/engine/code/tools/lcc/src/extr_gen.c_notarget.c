
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__** syms; } ;
struct TYPE_5__ {scalar_t__ wildcard; } ;
struct TYPE_6__ {TYPE_1__ x; } ;
typedef TYPE_3__* Node ;


 int LBURG_MAX ;
 size_t RX ;

int notarget(Node p) {
 return p->syms[RX]->x.wildcard ? 0 : LBURG_MAX;
}
