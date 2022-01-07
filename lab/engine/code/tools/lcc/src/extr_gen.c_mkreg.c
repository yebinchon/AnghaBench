
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* regnode; int name; } ;
struct TYPE_6__ {int number; int mask; int set; TYPE_1__ x; int name; } ;
typedef TYPE_2__* Symbol ;


 int NEW0 (TYPE_2__*,int ) ;
 int PERM ;
 int stringf (char*,int) ;

Symbol mkreg(char *fmt, int n, int mask, int set) {
 Symbol p;

 NEW0(p, PERM);
 p->name = p->x.name = stringf(fmt, n);
 NEW0(p->x.regnode, PERM);
 p->x.regnode->number = n;
 p->x.regnode->mask = mask<<n;
 p->x.regnode->set = set;
 return p;
}
