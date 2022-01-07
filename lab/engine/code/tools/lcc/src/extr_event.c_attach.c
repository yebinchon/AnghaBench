
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {void* cl; int func; } ;
typedef int List ;
typedef int Apply ;


 int NEW (struct entry*,int ) ;
 int PERM ;
 int append (struct entry*,int ) ;

void attach(Apply func, void *cl, List *list) {
 struct entry *p;

 NEW(p, PERM);
 p->func = func;
 p->cl = cl;
 *list = append(p, *list);
}
