
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiAreaKeyEvent ;
typedef int uiAreaHandler ;
typedef int uiArea ;
struct TYPE_2__ {int (* key ) (int *) ;} ;


 size_t curExample ;
 TYPE_1__** examples ;
 int stub1 (int *) ;

__attribute__((used)) static int handlerKeyEvent(uiAreaHandler *ah, uiArea *a, uiAreaKeyEvent *e)
{
 if (examples[curExample]->key != ((void*)0))
  return examples[curExample]->key(e);
 return 0;
}
