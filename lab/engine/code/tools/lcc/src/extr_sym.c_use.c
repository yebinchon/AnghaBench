
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uses; } ;
typedef TYPE_1__* Symbol ;
typedef int Coordinate ;


 int NEW (int *,int ) ;
 int PERM ;
 int append (int *,int ) ;

void use(Symbol p, Coordinate src) {
 Coordinate *cp;

 NEW(cp, PERM);
 *cp = src;
 p->uses = append(cp, p->uses);
}
