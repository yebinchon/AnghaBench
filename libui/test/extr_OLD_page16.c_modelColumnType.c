
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableModelHandler ;
typedef int uiTableModelColumnType ;
typedef int uiTableModel ;


 int uiTableModelColumnColor ;
 int uiTableModelColumnImage ;
 int uiTableModelColumnInt ;
 int uiTableModelColumnString ;

__attribute__((used)) static uiTableModelColumnType modelColumnType(uiTableModelHandler *mh, uiTableModel *m, int column)
{
 if (column == 3 || column == 4)
  return uiTableModelColumnColor;
 if (column == 5)
  return uiTableModelColumnImage;
 if (column == 7 || column == 8)
  return uiTableModelColumnInt;
 return uiTableModelColumnString;
}
