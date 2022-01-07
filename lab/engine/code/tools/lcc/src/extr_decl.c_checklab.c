
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int defined; int name; } ;
typedef TYPE_1__* Symbol ;


 int error (char*,int ) ;

void checklab(Symbol p, void *cl) {
 if (!p->defined)
  error("undefined label `%s'\n", p->name);
 p->defined = 1;
}
