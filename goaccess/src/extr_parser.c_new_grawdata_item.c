
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GRawDataItem ;


 int * xcalloc (unsigned int,int) ;

GRawDataItem *
new_grawdata_item (unsigned int size)
{
  GRawDataItem *item = xcalloc (size, sizeof (*item));
  return item;
}
