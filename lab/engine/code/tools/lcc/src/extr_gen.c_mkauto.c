
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int name; int offset; } ;
struct TYPE_7__ {scalar_t__ sclass; TYPE_2__ x; TYPE_1__* type; } ;
struct TYPE_5__ {int align; scalar_t__ size; } ;
typedef TYPE_3__* Symbol ;


 scalar_t__ AUTO ;
 int assert (int) ;
 int offset ;
 int roundup (scalar_t__,int ) ;
 int stringd (int ) ;

void mkauto(Symbol p) {
 assert(p->sclass == AUTO);
 offset = roundup(offset + p->type->size, p->type->align);
 p->x.offset = -offset;
 p->x.name = stringd(-offset);
}
