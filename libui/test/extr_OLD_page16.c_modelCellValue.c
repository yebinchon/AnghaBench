
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableModelHandler ;
typedef int uiTableModel ;


 int* checkStates ;
 void** img ;
 char* row9text ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 void* uiTableModelGiveColor (double,double,double,int) ;
 void* uiTableModelGiveInt (int) ;
 void* uiTableModelStrdup (char*) ;
 int yellowRow ;

__attribute__((used)) static void *modelCellValue(uiTableModelHandler *mh, uiTableModel *m, int row, int col)
{
 char buf[256];

 if (col == 3) {
  if (row == yellowRow)
   return uiTableModelGiveColor(1, 1, 0, 1);
  if (row == 3)
   return uiTableModelGiveColor(1, 0, 0, 1);
  if (row == 11)
   return uiTableModelGiveColor(0, 0.5, 1, 0.5);
  return ((void*)0);
 }
 if (col == 4) {
  if ((row % 2) == 1)
   return uiTableModelGiveColor(0.5, 0, 0.75, 1);
  return ((void*)0);
 }
 if (col == 5) {
  if (row < 8)
   return img[0];
  return img[1];
 }
 if (col == 7)
  return uiTableModelGiveInt(checkStates[row]);
 if (col == 8) {
  if (row == 0)
   return uiTableModelGiveInt(0);
  if (row == 13)
   return uiTableModelGiveInt(100);
  if (row == 14)
   return uiTableModelGiveInt(-1);
  return uiTableModelGiveInt(50);
 }
 switch (col) {
 case 0:
  sprintf(buf, "Row %d", row);
  break;
 case 2:
  if (row == 9)
   return uiTableModelStrdup(row9text);

 case 1:
  strcpy(buf, "Part");
  break;
 case 6:
  strcpy(buf, "Make Yellow");
  break;
 }
 return uiTableModelStrdup(buf);
}
