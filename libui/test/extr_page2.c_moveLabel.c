
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiButton ;


 int * movingBoxes ;
 int movingCurrent ;
 int movingLabel ;
 int uiBoxAppend (int ,int ,int ) ;
 int uiBoxDelete (int ,int ) ;
 int uiControl (int ) ;

__attribute__((used)) static void moveLabel(uiButton *b, void *data)
{
 int from, to;

 from = movingCurrent;
 to = 0;
 if (from == 0)
  to = 1;
 uiBoxDelete(movingBoxes[from], 0);
 uiBoxAppend(movingBoxes[to], uiControl(movingLabel), 0);
 movingCurrent = to;
}
