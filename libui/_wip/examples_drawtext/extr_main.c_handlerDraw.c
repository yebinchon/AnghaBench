
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiAreaHandler ;
typedef int uiAreaDrawParams ;
typedef int uiArea ;
struct TYPE_2__ {int (* draw ) (int *) ;} ;


 size_t curExample ;
 TYPE_1__** examples ;
 int stub1 (int *) ;

__attribute__((used)) static void handlerDraw(uiAreaHandler *a, uiArea *area, uiAreaDrawParams *p)
{
 examples[curExample]->draw(p);
}
