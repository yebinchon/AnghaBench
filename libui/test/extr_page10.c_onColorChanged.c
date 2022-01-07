
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiColorButton ;


 int textArea ;
 int uiAreaQueueRedrawAll (int ) ;

__attribute__((used)) static void onColorChanged(uiColorButton *b, void *data)
{
 uiAreaQueueRedrawAll(textArea);
}
