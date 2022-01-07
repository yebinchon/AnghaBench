
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiSpinbox ;


 int histogram ;
 int uiAreaQueueRedrawAll (int ) ;

__attribute__((used)) static void onDatapointChanged(uiSpinbox *s, void *data)
{
 uiAreaQueueRedrawAll(histogram);
}
