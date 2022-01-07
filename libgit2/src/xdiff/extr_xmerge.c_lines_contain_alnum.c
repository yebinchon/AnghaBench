
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** recs; } ;
struct TYPE_7__ {TYPE_2__ xdf2; } ;
typedef TYPE_3__ xdfenv_t ;
struct TYPE_5__ {int size; int ptr; } ;


 scalar_t__ line_contains_alnum (int ,int ) ;

__attribute__((used)) static int lines_contain_alnum(xdfenv_t *xe, int i, int chg)
{
 for (; chg; chg--, i++)
  if (line_contains_alnum(xe->xdf2.recs[i]->ptr,
    xe->xdf2.recs[i]->size))
   return 1;
 return 0;
}
