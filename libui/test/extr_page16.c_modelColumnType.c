
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiTableValueType ;
typedef int uiTableModelHandler ;
typedef int uiTableModel ;


 int uiTableValueTypeColor ;
 int uiTableValueTypeImage ;
 int uiTableValueTypeInt ;
 int uiTableValueTypeString ;

__attribute__((used)) static uiTableValueType modelColumnType(uiTableModelHandler *mh, uiTableModel *m, int column)
{
 if (column == 3 || column == 4)
  return uiTableValueTypeColor;
 if (column == 5)
  return uiTableValueTypeImage;
 if (column == 7 || column == 8)
  return uiTableValueTypeInt;
 return uiTableValueTypeString;
}
