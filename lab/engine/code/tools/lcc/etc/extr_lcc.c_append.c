
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* str; struct TYPE_5__* link; } ;
typedef TYPE_1__* List ;


 TYPE_1__* alloc (int) ;

__attribute__((used)) static List append(char *str, List list) {
 List p = alloc(sizeof *p);

 p->str = str;
 if (list) {
  p->link = list->link;
  list->link = p;
 } else
  p->link = p;
 return p;
}
