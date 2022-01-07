
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* var; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct TYPE_6__ {int defined; int scope; } ;
typedef TYPE_2__* Symbol ;


 int Local ;
 TYPE_3__* code (int ) ;
 int level ;

void addlocal(Symbol p) {
 if (!p->defined) {
  code(Local)->u.var = p;
  p->defined = 1;
  p->scope = level;
 }
}
