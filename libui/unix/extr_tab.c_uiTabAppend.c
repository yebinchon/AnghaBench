
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pages; } ;
typedef TYPE_2__ uiTab ;
typedef int uiControl ;
struct TYPE_5__ {int len; } ;


 int uiTabInsertAt (TYPE_2__*,char const*,int ,int *) ;

void uiTabAppend(uiTab *t, const char *name, uiControl *child)
{
 uiTabInsertAt(t, name, t->pages->len, child);
}
