
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiAreaMouseEvent ;
typedef int uiAreaHandler ;
typedef int uiArea ;
struct TYPE_2__ {int (* mouse ) (int *) ;} ;


 size_t curExample ;
 TYPE_1__** examples ;
 int stub1 (int *) ;

__attribute__((used)) static void handlerMouseEvent(uiAreaHandler *a, uiArea *area, uiAreaMouseEvent *e)
{
 if (examples[curExample]->mouse != ((void*)0))
  examples[curExample]->mouse(e);
}
