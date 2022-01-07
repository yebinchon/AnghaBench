
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiEntry ;


 int area ;
 int uiAreaQueueRedrawAll (int ) ;

__attribute__((used)) static void entryChanged(uiEntry *e, void *data)
{
 uiAreaQueueRedrawAll(area);
}
