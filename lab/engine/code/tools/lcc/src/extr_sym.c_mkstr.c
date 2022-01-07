
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {char* p; } ;
typedef TYPE_3__ Value ;
struct TYPE_8__ {int * loc; } ;
struct TYPE_9__ {TYPE_1__ c; } ;
struct TYPE_11__ {int type; TYPE_2__ u; } ;
typedef TYPE_4__* Symbol ;


 int GLOBAL ;
 int STATIC ;
 int array (int ,scalar_t__,int ) ;
 int chartype ;
 TYPE_4__* constant (int ,TYPE_3__) ;
 int * genident (int ,int ,int ) ;
 scalar_t__ strlen (char*) ;

Symbol mkstr(char *str) {
 Value v;
 Symbol p;

 v.p = str;
 p = constant(array(chartype, strlen(v.p) + 1, 0), v);
 if (p->u.c.loc == ((void*)0))
  p->u.c.loc = genident(STATIC, p->type, GLOBAL);
 return p;
}
