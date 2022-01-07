
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* equatedto; } ;
struct TYPE_7__ {TYPE_1__ l; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__* Symbol ;


 int assert (int) ;

__attribute__((used)) static int equal(Symbol lprime, Symbol dst) {
 assert(dst && lprime);
 for ( ; dst; dst = dst->u.l.equatedto)
  if (lprime == dst)
   return 1;
 return 0;
}
