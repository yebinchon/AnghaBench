
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int str; struct TYPE_4__* link; } ;
typedef TYPE_1__* List ;


 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static List find(char *str, List list) {
 List b;

 if ((b = list))
  do {
   if (strcmp(str, b->str) == 0)
    return b;
  } while ((b = b->link) != list);
 return 0;
}
